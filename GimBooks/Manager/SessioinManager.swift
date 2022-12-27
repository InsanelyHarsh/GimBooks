//
//  SessioinManager.swift
//  GimBooks
//
//  Created by Harsh Yadav on 27/12/22.
//

import Foundation
class SessionManager:ObservableObject{
    @Published private(set) var isLoggedIn:Bool = false
    
    ///Logout ---> Login
    func didLoggedIn(){
        self.isLoggedIn = true
    }
    
    ///Logged In ---> Log Out
    func didLoggedOut(){
        self.isLoggedIn = false
    }
    
    func configureCurrentState(){
        let hasLoggedIn = UserDefaults.standard.bool(forKey: Constants.isLoggedIn)
        
        self.isLoggedIn = hasLoggedIn
    }
}


struct Constants{
    static var isLoggedIn:String = "IS_USER_LOGGED_IN"
}
