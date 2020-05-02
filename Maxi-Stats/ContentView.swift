//
//  ContentView.swift
//  Maxi-Stats
//
//  Created by Aaron Beasley on 5/2/20.
//  Copyright © 2020 Aaron Beasley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color(.lightGray)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack {
                    HeaderView(withURL: "https://avatars1.githubusercontent.com/u/50126858?s=460&u=db276bcd977af938c67e3f01ada094513f2c2ee7&v=4")
                    Spacer()
                    StatList()
                }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
