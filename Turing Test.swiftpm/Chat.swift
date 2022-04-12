import SwiftUI

struct Chatbot: View {
    var perguntas = ["pergunta1", "pergunta2", "pergunta3", "pergunta4"]
    @State private var perguntaInicial = "pergunta1"

    var body: some View {
        
        
            
            Form{
                Section{
                       
                    if perguntaInicial == "pergunta1"{Text("Tip: Because pickers in forms have this navigation behavior, it’s important you present them in a NavigationView on iOS otherwise you’ll find that tapping them doesn’t work. This might be one you create directly around the form, or you could present the form from another view that itself was wrapped in a NavigationView.")
                            .padding()
                    }
                    
                    if perguntaInicial == "pergunta2"{Text("On iOS, that will appear as a single list row that you can tap to bring in a new screen showing all possible options – Mild, Medium, and Mature. Your current selection will have a checkmark next to it, and when you select a new option it will return to the previous screen with that now showing.")
                            .padding()
                    }
                    if perguntaInicial == "pergunta3"{Text("SwiftUI’s picker views take on special behavior when inside forms, automatically adapting based on the platform you’re using them with. On iOS this behavior is particularly impressive, because the picker can be collapsed down to a single list row that navigates into a new list of possible options – it’s a really natural way of working with many options.")
                            .padding()
                    }
                    if perguntaInicial == "pergunta4"{Text("😛")
                            .padding()
                    }
                    Picker("Escolha uma pergunta", selection: $perguntaInicial){
                        ForEach(perguntas, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.wheel)
                }
                            
                
        }
}
}
