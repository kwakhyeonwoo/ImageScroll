//
//  ContentView.swift
//  ImageScrollView
//
//  Created by 곽현우 on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    
    @State fileprivate var click : String = ""
    @State fileprivate var changeImage : Bool = true
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                Spacer()
                HStack(alignment: .top, spacing: 0){
                    Button(action: {
                        
                    }, label: {
                        Text("서울")
                    })
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("프랑스")
                    })
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    
                    Button(action: {
                        
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
            }
            
            
            LazyVStack{
                if(click == "서울"){
                    
                    ScrollView(.vertical){
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
