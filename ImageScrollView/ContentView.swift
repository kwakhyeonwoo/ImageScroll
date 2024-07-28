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
                    
                    
                    Button(action: {
                        click = "이탈리아"
                    }, label: {
                        Text("이탈리아")
                    })
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    
                }
                
                ZStack {
                    if click != "서울" {
                        Image("Image")
                            .resizable()
                            .scaledToFill()
                    }
                }
                
                if click == "이탈리아" {
                    ScrollView(.vertical) {
                        Text("이탈리아 이미지나 콘텐츠가 여기에 표시됩니다.")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
