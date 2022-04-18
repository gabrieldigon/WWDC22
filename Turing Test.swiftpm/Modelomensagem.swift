
import SwiftUI

struct Chatbot: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Hi there,Gabriel told me you'd come,what do you want?"]
    @State var count: Int = 0
    var body: some View {
        
        VStack {
            HStack{
            Image("person.circle")
                    .resizable()
                    .frame(width:  30, height: 30)
            Text("Friend")
                    .font(.system(size: 25))
            }
           
            
            //nesse scrollview eu to printando o vetor
            ScrollView {
                
                ForEach(messages, id: \.self) { message in
                    // If the message contains [USER], that means it's us
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of:"[USER]", with: "")
                        HStack{
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(Color.white)
                                .background(Color.blue.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                         
                        }
                        
                    } else {
                        HStack{
                        let newMessage = message.replacingOccurrences(of:"[Bot]",with: "")
                            Text(newMessage)
                            .padding()
                            .background(Color.gray.opacity(0.15))
                            .cornerRadius(50)
                            .padding(.horizontal, 16)
                            .padding(.bottom, 10)
                        Spacer()
                            
                        }
                    }
                    
                }
                .rotationEffect(.degrees(180))
               
            }
            .rotationEffect(.degrees(180))
            .background(Color.gray.opacity(0.1))
          
            
            // aqui e a parte do text field
           
                TextField("Type something", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        mandarResposta(message: messageText)
                    }
                
                Button {
                    mandarResposta(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill")
                }

        }
        .padding()
        
    }
    
    func mandarResposta(message: String) {
        
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""

            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    messages.append("[Bot]"+pegarResposta(message: message,chat: messages))
                        }
                    }
                }
            }
        }
    

//basicamente aqui construimos um vetor usando as funções mandarResposta e com a função pegar resposta e com o forEach printamos esse vetor,caso a mensagem tenha[USER] na frente sabemos que ela é do usuario e por isso printamos ela de uma certa maneira,se não tiver printamos de uma outra maneira
//sel.messgaeText = ""->limpa o teclado
