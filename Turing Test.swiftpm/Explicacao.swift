import SwiftUI

struct Explicacao: View {
   
    var body: some View {
        
    
    
                Form{

                        Text("Explicacao")
                            .font(.title)
                            .frame(width: 600)
                            .padding()
                           
                        Text("Amo beatriz cordeiro")
                        .padding()
                        Button("Next Page "){}
                        .frame(width: 600)
                        .padding()
                        .font(.system(size: 25))
                        .buttonStyle(.borderedProminent)
                }
                .padding()
           
    }
}
