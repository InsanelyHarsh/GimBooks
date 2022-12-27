//
//  MobileView.swift
//  GimBooks
//
//  Created by Harsh Yadav on 27/12/22.
//

import SwiftUI

struct MobileView: View {
    @State var number:String = "7014822911"
    var body: some View {
        VStack(spacing: 40){
            VStack(alignment: .leading, spacing: 55){
                //MARK: Header
                HeaderView(image: "gear") //TODO: system Image, change to image
                
                //MARK: Mobile Number
                VStack(alignment: .leading, spacing: 20){
                    Text("Enter Phone Number")
                        .font(.title2)
                        .bold()
                    
                    TextField("Number", text: $number)
                        .keyboardType(.numberPad)
                        .font(.title3)
                }
            }.padding(.horizontal)
            
            NavigationLink(value: LoggedOutRouteViews.otp) {
                Text("Continue")
            }
            .buttonStyle(.borderedProminent)
            .tint(.black)
            .foregroundColor(.white)
            .bold()
            .font(.title3)
//            .frame(width: 100, height: 50, alignment: .center)
            
            
            Spacer()
        }
//        .navigationTitle("Login")
        .navigationBarHidden(true)
        
        .navigationDestination(for: LoggedOutRouteViews.self) { value in
            switch value{
            case .mobile:
                MobileView()
            case .otp:
                OTPView()
            }
        }
    }
}

struct MobileView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .navigationBarBackButtonHidden()
//            .navigationBarHidden(true)
    }
}
