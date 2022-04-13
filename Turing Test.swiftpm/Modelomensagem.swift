
import SwiftUI

struct Chatbot: View {
    @State private var messageText = ""
    @State var messages: [String] = [""]
    @State var count: Int = 0
    var body: some View {
        VStack {
            
            //nesse scrollview eu to printando o vetor
            ScrollView {
                
                ForEach(messages, id: \.self) { message in
                    // If the message contains [USER], that means it's us
                    if message.contains("[USER]") {
                        let newMessage = message
                        
                            Text(newMessage)
  
                    } else {
                            
                            Text(message)
                  
                    }
                    
                }
               
            }
          
            
            // aqui e a parte do text field
           
                TextField("Type something", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        mandarResposta(message: messageText)
                    }
                
                Button {
                    mandarResposta(message: "HELLO")
                } label: {
                    Image(systemName: "paperplane.fill")
                }

        }
        .padding()
        
    }
    
    func mandarResposta(message: String) {
        if messages.count == 7{messages.append("eu sou um robo")}
        
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""

            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    messages.append("[Bot]"+pegarResposta(message: message))
                }
            }
        }
    }
}
//basicamente aqui construimos um vetor usando as funções mandarResposta e com a função pegar resposta e com o forEach printamos esse vetor,caso a mensagem tenha[USER] na frente sabemos que ela é do usuario e por isso printamos ela de uma certa maneira,se não tiver printamos de uma outra maneira
//sel.messgaeText = ""->limpa o teclado
