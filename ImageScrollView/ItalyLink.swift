//
//  ItalyLink.swift
//  ImageScrollView
//
//  Created by 곽현우 on 7/28/24.
//

import SwiftUI

struct ItalyLink : View {
    
    let italyImage = ["Italy1", "Italy2", "Italy3", "Italy4", "Italy5", "Italy6", "Italy7", "Italy8", "Italy9", "Italy10", "Italy11", "Italy12", "Italy13", "Italy14", "Italy15", "Italy16", "Italy17", "Italy18", "Italy19", "Italy20", "Italy21", "Italy22", "Italy23", "Italy24", "Italy25", "Italy26", "Italy27", "Italy28", "Italy29", "Italy30"]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                ForEach(italyImage, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 100)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            }
        }
    }
}

#Preview {
    ItalyLink()
}
