//
//  ParisLink.swift
//  ImageScrollView
//
//  Created by 곽현우 on 7/28/24.
//

import SwiftUI

struct ParisLink : View {
    
    @State private var parisImageScale = 1.0
    
    let parisImages = ["Paris1", "Paris2", "Paris3", "Paris4", "Paris5", "Paris6", "Paris7", "Paris8", "Paris9", "Paris10", "Paris11", "Paris12"]
    
    var body: some View{
        NavigationView{
            ScrollView{
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(parisImages, id: \.self){ parisImages in
                        NavigationLink(
                            destination: ParisFullScreenImageView(parisImageName: parisImages, parisImageScale: $parisImageScale),
                            label: {
                                Image(parisImages)
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
            .navigationTitle("Paris Images")
        }
    }
}


struct ParisFullScreenImageView : View {
    
    let parisImageName : String
    @Binding var parisImageScale : Double
    
    var body: some View{
        VStack{
            Spacer()
            
            
            Image(parisImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(parisImageScale)
                .gesture(
                    MagnificationGesture()
                        .onChanged{ value in
                            parisImageScale = value.magnitude
                        }
                )
                .animation(.easeInOut, value: parisImageScale)
            
            Spacer()
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ParisLink()
}
