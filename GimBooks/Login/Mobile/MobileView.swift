//
//  MobileView.swift
//  GimBooks
//
//  Created by Harsh Yadav on 27/12/22.
//

import SwiftUI

struct MobileView: View {

    var body: some View {
        VStack{
            Text("Hello, World!")
            
            NavigationLink(value: LoggedOutRouteViews.otp) {
                Text("Verify")
            }
        }
        .navigationTitle("Login")
        
        
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
        MobileView()
    }
}
