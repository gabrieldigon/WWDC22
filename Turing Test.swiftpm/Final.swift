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
                           
                        Text("Well, talking about our friend B.O.T.E there is a reason it didn't pass the Turing Test: ME, I’m still learning, so I promised B.O.T.E that I would make him smarter after all there is always a WWDC🍎 next year! \n\nFor now I hope you could understand what is the Turing Test and how it works!\n\nTo finish this playground I’ll let you talk to him again if you want 😀(It's a slighted improved version that comes with some questions that he understands better, but fell free to explore!")
                        .padding()
                        .font(.system(size: 25))
                        
                        Button("talk to B.O.T.E "){
                            self.irTelacheia.toggle()
                        }
                        .fullScreenCover(isPresented: $irTelacheia, content: BOTE.init)
                        .frame(width: 600)
                        .padding()
                        .font(.system(size: 22))
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

