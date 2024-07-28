//
//  ContentView.swift
//  ImageScrollView
//
//  Created by 곽현우 on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    
    @State fileprivate var click : String = ""
    @State fileprivate var changeImage : Bool = false
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                Spacer()
                HStack(alignment: .top, spacing: 0){
                    Button(action: {
                        click = "서울"
                    }, label: {
                        Text("서울")
                    })
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    
                    Button(action: {
                        click = "프랑스"
                    }, label: {
                        Text("프랑스")
                    })
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    
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
                    
                ZStack{
                    Image("Image")
                        .resizable()
                    
                    Spacer()
                        .frame(maxHeight: .infinity)
                }
                
                //서울 버튼이 클릭되었을 때 해당 VStack을 메모릴에 올리겠다 선언 - Lazy
                if click == "서울" {
                    ScrollView{
                        LazyVStack{
                            ForEach(0..<50){ index in
                                ScrollView(.horizontal, showsIndicators: false, content: {
                                    HStack{
                                        Image("Seoul\(index)")
                                            .resizable()
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 20, height: 10)
                                            .shadow(radius: 10)
                                            .padding()
                                    }
                                })
                            }
                        }
                    }
                }
                LazyVStack{
                    if(click == "프랑스"){
                        
                        ScrollView(.vertical){
                            
                        }
                    }
                }
                LazyVStack{
                    if(click == "이탈리아"){
                        
                        ScrollView(.vertical){
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
