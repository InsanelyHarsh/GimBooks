//
//  RouteManager.swift
//  GimBooks
//
//  Created by Harsh Yadav on 27/12/22.
//

import SwiftUI

enum LoggedOutRouteViews:Hashable{
    case otp
    case mobile
    
    
    ///Title correspoding each View
    var title:String{
        switch self {
        case .otp:
            return "OTP"
        case .mobile:
            return "Mobile"
        }
    }
}

enum LoggedInRouteViews:Hashable{
    case home
}


class RouteManager:ObservableObject{
    @Published var route:NavigationPath = NavigationPath()
    
    func goToRootView(){
        self.route = NavigationPath()
    }
    
    func goBack(){
        if(self.route.count > 0){
            self.route.removeLast()
        }
    }
}
