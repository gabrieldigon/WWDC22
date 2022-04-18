import SwiftUI

struct Introducao: View {
    @State private var irTelacheia = false

    var body: some View {
        
            Form{

                    Text("Turing Test")
                        .font(.title)
                        .frame(width: 600)
                        .padding()
                       
                    Text("Hello, it’s very nice to meet you! My name is Gabriel,I’m part of the developer academy in Manaus,Brazil.I’ve been a fan of everything related to sci-fi since I’m a kid and I always dreamed of having a special type of friend: A Robot 🤖! (Just like R2-D2).In this playground I will try to explain you a concept about robots but for that you’ll need to meet a friend of my and discover something about him okay?\n\nTalk to him and discover his favorite color would you?")
                    .padding()
                    .font(.body)
                VStack{
                    HStack{
                    Image("person.circle")
                            .resizable()
                            .frame(width:  30, height: 30)
                    Text("Friend")
                    }
                }
                .frame(width: 615)
                
                    
                    Button("Message"){
                        self.irTelacheia.toggle()
                    }
                    .fullScreenCover(isPresented: $irTelacheia, content: Chatbot.init)
                    .frame(width: 600)
                    .font(.system(size: 15))
                   
           
            .padding()
                
    }

    }
}
