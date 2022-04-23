import SwiftUI

struct BOTE: View {
    @State private var showingSheet = false
    @Environment(\.presentationMode) var presentationMode
    @State private var irTelacheia = false
    @State private var messageText = ""
    @State var messages: [String] = ["HELLO AGAIN! Want to chat?","press the ? button to see how smart I'm😌"]
    var body: some View {
        
        
        
        VStack{
            
            
            HStack{
                Button("Back"){
                    presentationMode.wrappedValue.dismiss()
                }
                .font(.system(size: 25))
                .buttonStyle(.borderedProminent)
                
                
                Spacer()
                
                Image("person.circle")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                Text("Friend")
                    .font(.system(size: 40))
                    .frame(alignment:.center)
                Spacer()
                Button("?"){
                    showingSheet.toggle()
                }
                .font(.system(size: 40))
                .frame(width: 40, height: 40)
                .cornerRadius(20)
                .sheet(isPresented: $showingSheet) {
                            smartQuestions()
                        }
            }
            .padding()
            
            ScrollView {
                
                ForEach(messages, id: \.self) { message in
                    
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of:"[USER]", with: "")
                        HStack{
                            Spacer()
                            Text(newMessage)
                                .font(.system(size: 25))
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
                                .font(.system(size: 25))
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
            
            
            HStack{
                
                
                TextField("Type something", text: $messageText)
                    .font(.system(size: 25))
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        mandarResposta(message: messageText)
                    }
                
                Image("paperplane")
                    .foregroundColor(.blue)
                    .padding()
                    .onTapGesture {
                        mandarResposta(message: messageText)
                    }
            }
            
        }
    }
    
    func mandarResposta(message: String) {
        
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    messages.append("[Bot]"+pegarRespostaSmart(message: message))
                }
            }
        }
    }
}


//basicamente aqui construimos um vetor usando as funções mandarResposta e com a função pegar resposta e com o forEach printamos esse vetor,caso a mensagem tenha[USER] na frente sabemos que ela é do usuario e por isso printamos ela de uma certa maneira,se não tiver printamos de uma outra maneira
//sel.messgaeText = ""->limpa o teclado
