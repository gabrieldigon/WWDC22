import SwiftUI
struct Desenvolvimento: View {
    @State private var showingSheet = false
    var body: some View {
        
    
    
                Form{

                        Text("Desenvolvimento")
                            .font(.title)
                            .frame(width: 600)
                            .padding()
                           
                        Text("Amo beatriz cordeiro")
                        .padding()
                        Button("Next Page "){
                            showingSheet.toggle()
                        }
                        .sheet(isPresented: $showingSheet){
                            Explicacao()
                        }
                        .frame(width: 600)
                        .padding()
                        .font(.system(size: 25))
                        .buttonStyle(.borderedProminent)
                }
                .padding()
           
    }
}
