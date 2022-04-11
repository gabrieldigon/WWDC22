import SwiftUI

struct Explicacao: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var irTelacheia = false
    var body: some View {
        
    
    
                Form{

                        Text("Explicacao")
                            .font(.title)
                            .frame(width: 600)
                            .padding()
                           
                        Text("Swift doesn’t let us create one stored property that refers to other stored properties, because it would cause problems when the object is created. This means trying to create a TextField bound to a local property will cause problems.")
                        .padding()
                        .font(.body)
                        Button("Next Page ") {
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
