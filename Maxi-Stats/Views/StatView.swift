//
//  StatView.swift
//  Maxi-Stats
//
//  Created by Aaron Beasley on 5/2/20.
//  Copyright © 2020 Aaron Beasley. All rights reserved.
//

import SwiftUI

struct Stat: Identifiable {
    var id = UUID()
    var title: String
    var stat: String
    var width: Int
    var height: Int
}

struct StatView: View {
    
    var item = Stat(title: "Lines of Code", stat: "24678", width: 340, height: 220)
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(item.title)
                       .font(.headline)
                       .fontWeight(.medium)
                       .padding(.top)
                        .frame(maxWidth: .infinity, alignment: .center)

                    Text(item.stat)
                        .fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center)
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

struct StatView_Previews: PreviewProvider {
    static var previews: some View {
        StatView()
    }
}
