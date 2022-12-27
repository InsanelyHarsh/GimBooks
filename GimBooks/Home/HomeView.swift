//
//  HomeView.swift
//  GimBooks
//
//  Created by Harsh Yadav on 27/12/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var sessionManager:SessionManager
    var body: some View {
        VStack{
            Text("Welcome !")
            
            Button {
                self.sessionManager.didLoggedOut()
            } label: {
                Text("Log out")
            }
        }.animation(.easeIn, value: self.sessionManager.isLoggedIn)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
