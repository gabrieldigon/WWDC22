import SwiftUI

struct Chatbot: View {
    enum	Perguntas {
        case pergunta1
        case pergunta2
    }
    
    func chat(pergunta:	Perguntas) -> String {
        
        switch pergunta {
            
        case .pergunta1:
            return("resposta1")
        case .pergunta2:
            return("resposta1")
        }
            
    }

    var body: some View {
       Text(chat(pergunta: .pergunta1))
    }
                      

}
