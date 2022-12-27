//
//  HeaderView.swift
//  GimBooks
//
//  Created by Harsh Yadav on 27/12/22.
//

import SwiftUI

struct HeaderView: View {
    let image:String
    let title:String
    let subTitle:String
    
    init(image:String,title: String = "GST Invoice Manager", subTitle: String = "By GimBooks") {
        self.image = image
        self.title = title
        self.subTitle = subTitle
    }
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: self.image)
                .resizable()
                .frame(width: 60,height: 60)
            
            VStack(alignment: .leading,spacing: 10){
                Text(self.title)
                    .font(.title2)
                Text(self.subTitle)
            }
            
            Spacer()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(image: "gear")
    }
}
