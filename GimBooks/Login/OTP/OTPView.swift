//
//  OTPView.swift
//  GimBooks
//
//  Created by Harsh Yadav on 27/12/22.
//

import SwiftUI

struct OTPView: View {
    @EnvironmentObject var sessionManager:SessionManager
    @EnvironmentObject var routeManager:RouteManager
    
    @State var otp:String = "4567"
    var body: some View {
        VStack(spacing: 40){
            VStack(alignment: .leading, spacing: 55){
                //MARK: Header
                HStack(spacing: 15){
                    Button {
                        self.routeManager.goBack()
                    } label: {
                        Image(systemName: "arrow.backward")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .center)
                    }.tint(.black)


                    HeaderView(image: "gear")
                }
                
                //MARK: Mobile Number
                VStack(alignment: .leading){
                    Text("Please Enter OTP")
                        .font(.title2)
                        .bold()
                        .padding(.bottom,1)
                    
                    Text("Sent to XXXXXXXXX")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    TextField("Number", text: $otp)
                        .keyboardType(.numberPad)
                        .font(.title2)
                        .padding(.top)
                    
                    HStack{
                        Text("Didn't recieve OTP yet?")
                            .foregroundColor(.gray)
                        
                        Button {
                            
                        } label: {
                            Text("Re-send")
                                .underline(true, color: .blue)
                        }
                    }.font(.caption)
                }
            }.padding(.horizontal)
            
            Button(action: {
                self.routeManager.goToRootView()
                UserDefaults.standard.set(true, forKey: Constants.isLoggedIn)
                self.sessionManager.didLoggedIn()
            }, label: {
                Text("Verify")
            })
            .buttonStyle(.borderedProminent)
            .tint(.black)
            .foregroundColor(.white)
            .bold()
            .font(.title3)
//            .frame(width: 100, height: 50, alignment: .center)
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
            .environmentObject(RouteManager())
            .environmentObject(SessionManager())
    }
}
