//
//  ParisLink.swift
//  ImageScrollView
//
//  Created by 곽현우 on 7/28/24.
//

import SwiftUI

struct ParisLink : View {
    
    let parisImages = ["Paris1", "Paris2", "Paris3", "Paris4", "Paris5", "Paris6", "Paris7", "Paris8", "Paris9", "Paris10", "Paris11", "Paris12"]
    
    var body: some View{
        ScrollView{
            LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                ForEach(parisImages, id: \.self){ parisImages in
                    Image(parisImages)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 150)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            }
            .padding()
        }
    }
}
