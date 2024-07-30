import SwiftUI

struct ItalyLink: View {
    
    @State private var ItalyImageScale = 1.0
    @State private var ItalySelectedImage: String? = nil
    
    let italyImages = ["Italy1", "Italy2", "Italy3", "Italy4", "Italy5", "Italy6", "Italy7", "Italy8", "Italy9", "Italy10", "Italy11", "Italy12", "Italy13", "Italy14", "Italy15", "Italy16", "Italy17", "Italy18", "Italy19", "Italy20", "Italy21", "Italy22", "Italy23", "Italy24", "Italy25", "Italy26", "Italy27", "Italy28", "Italy29", "Italy30"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(italyImages, id: \.self) { ItalyImageName in
                        NavigationLink(
                            destination: ItalyFullScreenImageView(ItalyImageName: ItalyImageName, bindItalyImageScale: $ItalyImageScale),
                            label: {
                                Image(ItalyImageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: UIScreen.main.bounds.width / 2 - 30, height: UIScreen.main.bounds.width / 2 - 30)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                        )
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Italy Images")
        }
    }
}

struct ItalyFullScreenImageView : View {
    
    let ItalyImageName : String
    //값 되돌리기 위해 Bindind사용
    @Binding var bindItalyImageScale : Double
    
    var body: some View{
        VStack{
            Spacer()
            
            Image(ItalyImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(bindItalyImageScale)
                .gesture(
                    MagnificationGesture()
                        .onChanged{ value in
                            bindItalyImageScale = value.magnitude
                        }
                )
                .animation(.easeInOut, value: bindItalyImageScale)
            
            Spacer()
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    ItalyLink()
}
