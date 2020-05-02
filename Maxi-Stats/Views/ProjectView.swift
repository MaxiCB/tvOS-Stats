//
//  ProjectView.swift
//  Maxi-Stats
//
//  Created by Aaron Beasley on 5/2/20.
//  Copyright © 2020 Aaron Beasley. All rights reserved.
//

import SwiftUI

struct Project: Identifiable {
    var id = UUID()
    var title: String
    var date: String
    var commits: String
    var width: Int
    var height: Int
}

struct ProjectView: View {
    
    var item = Project(title: "Lines of Code", date: "4/20/2020", commits: "2", width: 340, height: 220)
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(item.title)
                       .font(.headline)
                       .fontWeight(.medium)
                       .padding(.top)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("Commits: " + item.commits)
                    .fontWeight(.regular).frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("Date: " + item.date)
                        .fontWeight(.light).frame(maxWidth: .infinity, alignment: .center)
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

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView()
    }
}
