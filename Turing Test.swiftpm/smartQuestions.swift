
import SwiftUI

struct smartQuestions: View {
    var body: some View {
        VStack{
           
            Text("Those are some questions that B.O.T.E understands better,you may have to ask the same thing twice but fell free to explore( you can copy and paste if you want 😉)")
                .padding()
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
           
            Group{
                Text("Why your name is B.O.T.E?")
                Text("What do you think about the Turing Test?")
                Text("How about Siri?")
                Text("Where do you live?")
                Text("What are the best robots of all time?")
                Text("Tell me the truth!")
                Text("Why don't you draw something B.O.T.E?")
                Text("How do you work?")
            }
            .font(.system(size: 25))
            .padding()
            
            .textSelection(.enabled)
            .font(.system(size: 30))
        }
    }
}
