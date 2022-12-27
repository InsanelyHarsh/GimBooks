//
//  RouteManager.swift
//  GimBooks
//
//  Created by Harsh Yadav on 27/12/22.
//

import SwiftUI

enum Route:Hashable{
    case loginView
}

class RouteManager:ObservableObject{
    @Published var route:NavigationPath = NavigationPath()
}
