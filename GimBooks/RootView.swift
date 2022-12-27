//
//  RootView.swift
//  GimBooks
//
//  Created by Harsh Yadav on 27/12/22.
//

import SwiftUI

struct RootView: View {
    @StateObject var routeManager:RouteManager = RouteManager()
    @StateObject var sessionManager:SessionManager = SessionManager()
    var body: some View {
        NavigationStack(path: $routeManager.route) {
            VStack{
                if(sessionManager.isLoggedIn){
                    HomeView()
                }else{
                    MobileView()
                }
            }
        }
        .navigationBarBackButtonHidden()
        .environmentObject(sessionManager)
        .environmentObject(routeManager)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
