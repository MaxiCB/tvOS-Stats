//
//  CurrentView.swift
//  Maxi-Stats
//
//  Created by Aaron Beasley on 5/2/20.
//  Copyright © 2020 Aaron Beasley. All rights reserved.
//

import SwiftUI

struct Current: Identifiable {
    var id = UUID()
    var title: String
    var branch: String
    var info: String
    var width: Int
    var height: Int
}

struct CurrentView: View {
    
    var item = Current(title: "Maxi-Stats", branch: "dev", info: "CurrentView.swift", width: 340, height: 220)
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(item.title)
                       .font(.headline)
                       .fontWeight(.medium)
                       .padding(.top)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    
                    Text("Task: " + item.info)
                    .fontWeight(.regular).frame(maxWidth: .infinity, alignment: .center)
                    
                    
                    Text("Branch: " + item.branch)
                    .fontWeight(.regular).frame(maxWidth: .infinity, alignment: .center)
                 }
              }
              .padding(.horizontal)
            Spacer()
        }
           .frame(width: CGFloat(item.width), height: CGFloat(item.height))
            .background(Color.white)
            .cornerRadius(6)
            .shadow(radius: 10)
    }
}

struct CurrentView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentView()
    }
}
