//
//  StatList.swift
//  Maxi-Stats
//
//  Created by Aaron Beasley on 5/2/20.
//  Copyright © 2020 Aaron Beasley. All rights reserved.
//

import SwiftUI

struct StatList: View {
    var current = currentData
    var projects = projectData
    var stats = statsData

    var body: some View {
       VStack(alignment: .leading) {
        Text("Current: ")
           .font(.system(size: 20))
           .fontWeight(.heavy)
          .foregroundColor(.white)
           .padding(.leading, 30)

        ScrollView(.horizontal, showsIndicators: false) {
           HStack(spacing: 20) {
              ForEach(current) { item in
                 CurrentView(item: item)
              }
           }
           .padding(20)
        }
        Text("Projects: ")
           .font(.system(size: 20))
           .fontWeight(.heavy)
          .foregroundColor(.white)
           .padding(.leading, 30)

        ScrollView(.horizontal, showsIndicators: false) {
           HStack(spacing: 20) {
              ForEach(projects) { item in
                 ProjectView(item: item)
              }
           }
           .padding(20)
        }
          Text("Statistics: ")
             .font(.system(size: 20))
             .fontWeight(.heavy)
            .foregroundColor(.white)
             .padding(.leading, 30)

          ScrollView(.horizontal, showsIndicators: false) {
             HStack(spacing: 20) {
                ForEach(stats) { item in
                   StatView(item: item)
                }
             }
             .padding(20)
          }
       }
    }
}

let statsData = [
    Stat(title: "Lines of Code", stat: "267,104", width: 300, height: 100),
    Stat(title: "Lines per Hour", stat: "281", width: 300, height: 100),
    Stat(title: "Projects", stat: "358", width: 300, height: 100),
    Stat(title: "Repositories", stat: "152", width: 300, height: 100),
    Stat(title: "Teams", stat: "2", width: 300, height: 100)

]

let projectData = [
    Project(title: "Maxi-Stats", date: "5/2/2020", commits: "12", width: 340, height: 180),
    Project(title: "BootWork", date: "5/1/2020", commits: "4", width: 340, height: 180),
    Project(title: "Readrr", date: "5/1/2020", commits: "1", width: 340, height: 180)
]

let currentData = [
    Current(title: "Maxi-Stats", branch: "dev",  info: "CurrentView.swift",  width: 340, height: 180),
    Current(title: "BootWork", branch: "dev",  info: "Home.tsx", width: 340, height: 180),
    Current(title: "Readrr", branch: "dev",  info: "actions.js", width: 340, height: 180)
]

struct StatList_Previews: PreviewProvider {
    static var previews: some View {
        StatList()
    }
}
