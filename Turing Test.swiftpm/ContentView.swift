import SwiftUI

struct Introducao: View {
    @State var tapCount = 0

    var body: some View {
        
    
            Form{

                    Text("Turing Test")
                        .font(.title)
                        .frame(width: 600)
                        .padding()
                       
                    Text("Groups don’t actually change the way your user interface looks, they just let us work around SwiftUI’s limitation of ten child views inside a parent – that’s text views inside a form, in this insta")
                    .padding()
                    Button("Tap Count: \(tapCount)") {
                        self.tapCount += 1
                    }
                    .frame(width: 600)
                    .padding()
                    .font(.system(size: 25))
                    .buttonStyle(.borderedProminent)
            }
            .padding()
       
                
    }
}

