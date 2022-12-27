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
    var body: some View {
        VStack{
            Button {
                //if is Correct
                self.routeManager.goToRootView()
                self.sessionManager.didLoggedIn()
            } label: {
                Text("Verify")
            }

        }.navigationTitle("OTP")
            .navigationBarTitleDisplayMode(.inline)
            .animation(.default, value: self.sessionManager.isLoggedIn)
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
    }
}
