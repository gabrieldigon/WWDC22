import SwiftUI
struct Desenvolvimento: View {
    @State private var irTelacheia = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
    
    
                Form{

                        Text("About B.O.T.E")
                            .font(.title)
                            .frame(width: 600)
                            .padding()
                           
                        Text("Well,talking about our friend B.O.T.E there is a reason it didn't pass the Turing Test,it was not programmed utilizing machinelearning,he just guides the user through a path but that doesn't really mean it is not smart, after all intelligence🧠is a complicated concept, the Test itself just proves that a robot can IMITATE (just like the game) human behavior which in my caseit’s pretty important since I want to have a friendly robot by my side🤖.\n\nSo I promised B.O.T.E that I would make him smarter and there is always a WWDC🍎 next year! \n\nFor now I hope you could understand what is the Turing Test and how it works!\n\nTo finish this playground I’ll let you talk to him again if you want 😀(It's a slighted improved version that comes with some questions that he understands better, but fell free to explore!)")
                        .padding()
                        .font(.system(size: 25))
                        
                        Button("B.O.T.E "){
                            self.irTelacheia.toggle()
                        }
                        .fullScreenCover(isPresented: $irTelacheia, content: Chatbot.init)
                        .frame(width: 600)
                        .padding()
                        .font(.system(size: 25))
                        .buttonStyle(.borderedProminent)
                    
                        Button("Back ") {
                            presentationMode.wrappedValue.dismiss()
                        }
                        .frame(width: 600)
                        .padding()
                        .font(.system(size: 15))
                }
                .padding()
           
    }
}

