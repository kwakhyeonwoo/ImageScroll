//
//  ContentView.swift
//  ImageScrollView
//
//  Created by 곽현우 on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var click: String = ""

    
    var body: some View {
        
        NavigationView {
            
            VStack{
                Spacer()
                HStack(alignment: .top, spacing: 0) {
                    NavigationLink(destination: SeoulLink(), label: {
                        Text("서울")
                            .frame(maxWidth: .infinity, maxHeight: 30)
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                    })
                    
                    NavigationLink(destination: ParisLink(), label: {
                        Text("프랑스")
                            .frame(maxWidth: .infinity, maxHeight: 30)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                    })
                    
                    NavigationLink(destination: ItalyLink(), label: {
                        Text("이탈리아")
                            .frame(maxWidth: .infinity, maxHeight: 30)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                    })
                    
                }
                
                ZStack {
                    if click != "서울" {
                        Image("Image")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
