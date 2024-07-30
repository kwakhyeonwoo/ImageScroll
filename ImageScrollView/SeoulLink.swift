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
        NavigationView{
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(seoulImages, id: \.self) { imageName in
                        NavigationLink(
                            destination: SeoulFullScreenImage(seoulImageName: imageName, bindSeoulImage: $seoulScale),
                            label: {
                                Image(imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: UIScreen.main.bounds.width / 2 - 30, height: UIScreen.main.bounds.width / 2 - 30)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                        })
                    }
                }
                .padding()
            }
            .navigationTitle("Seoul Images")
        }
    }
}

struct SeoulFullScreenImage : View {
    
    let seoulImageName : String
    @Binding var bindSeoulImage : Double
    
    var body: some View{
        VStack{
            Spacer()
            
            Image(seoulImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(bindSeoulImage)
                .gesture(
                    MagnificationGesture()
                        .onChanged{ value in
                            bindSeoulImage = value.magnitude
                        }
                )
                .animation(.easeInOut, value: bindSeoulImage)
            
            Spacer()
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SeoulLink()
}
