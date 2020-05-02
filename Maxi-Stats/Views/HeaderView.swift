//
//  HeaderView.swift
//  Maxi-Stats
//
//  Created by Aaron Beasley on 5/2/20.
//  Copyright © 2020 Aaron Beasley. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    @ObservedObject var imageLoader:ImageLoader
    
    init(withURL url:String) {
        imageLoader = ImageLoader(urlString:url)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(uiImage: imageLoader.data != nil ? UIImage(data:imageLoader.data!)! : UIImage())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:100, height:100)
                    .cornerRadius(10)
                Text("Aaron C. Beasley").foregroundColor(.white)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(withURL: "https://avatars1.githubusercontent.com/u/50126858?s=460&u=db276bcd977af938c67e3f01ada094513f2c2ee7&v=4")
    }
}
