import SwiftUI

struct Explicacao: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var irTelacheia = false
    var body: some View {
        
    
    
                Form{

                        Text("What is the Turing Test?")
                            .font(.title)
                            .frame(width: 600)
                            .padding()
                           
                        Text("Hello again! I saw you met my friend, his name is B.O.T.E and as you can see his not that smart, he failed the Turing Test ( he still studying π),but after all what is the Turing test? \n\nThe Turing Test was created by Alan Turing to try to answer a simple question:Can a machine act like a human in a conversation?\nTo prove that the machine needs to win a game called Imitation Game that consists in : \n\nTwo people and one robot \n\nπ§πΎββοΈ A (Person)\nπ©πΌ B(Judge)\nπ€ C(Robot)\n\nBasically person A needs to convince the judge B that he is human, the robot C has the same goal of person A. The judge can't see any of them.If judge B canβt tell who is human, the robot pass the test π€β  otherwise it fails π€β")
                        .padding()
                        .font(.system(size: 25))
                        Button("About B.O.T.E ") {
                            self.irTelacheia.toggle()
                        }
                        .fullScreenCover(isPresented: $irTelacheia, content: Desenvolvimento.init)
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
