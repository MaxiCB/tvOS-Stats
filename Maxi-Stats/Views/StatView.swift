//
//  StatView.swift
//  Maxi-Stats
//
//  Created by Aaron Beasley on 5/2/20.
//  Copyright © 2020 Aaron Beasley. All rights reserved.
//

import SwiftUI

struct StatView: View {
    
    var image: String
    var stat: String
    var label: String
    
    init(image: String, label: String, stat: String) {
        self.image = image
        self.label = label
        self.stat = stat
    }
    
    var body: some View {
        VStack {
            Text(label)
            HStack {
                Image(systemName: image)
                Text(stat)
            }
        }
    }
}

struct StatView_Previews: PreviewProvider {
    static var previews: some View {
        StatView(image: "star", label: "Lines Written", stat: "12367")
    }
}
