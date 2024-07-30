//
//  SeoulLink.swift
//  ImageScrollView
//
//  Created by 곽현우 on 7/28/24.
//

import SwiftUI

struct SeoulLink : View {
    
    @State fileprivate var seoulScale = 1.0
    let seoulImages = ["Seoul1", "Seoul2", "Seoul3", "Seoul4", "Seoul5"]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                
                ForEach(seoulImages, id: \.self) { imageName in
                    Image(imageName)
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

struct SeoulFullScreenImage : View {
    var body: some View{
        VStack{
            Spacer()
            
            
        }
    }
}

#Preview {
    SeoulLink()
}
