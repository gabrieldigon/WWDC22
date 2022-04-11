import SwiftUI

struct Introducao: View {
    @State private var showingSheet = false

    var body: some View {
        
            Form{

                    Text("Turing Test")
                        .font(.title)
                        .frame(width: 600)
                        .padding()
                       
                    Text("Amo beatriz cordeiro")
                    .padding()
                
                    Button("Next Page "){
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet){
                        Desenvolvimento()
                    }
                       
                    
                    .frame(width: 600)
                    .padding()
                    .font(.system(size: 25))
                    .buttonStyle(.borderedProminent)
            }
            .padding()
                
    }
}

