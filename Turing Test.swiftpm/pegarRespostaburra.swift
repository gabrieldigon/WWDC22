import Foundation
var modresposta = 0
var modresposta2 = 1

func pegarResposta(message: String,chat: [String]) -> String {
    var cont = chat.count
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hello") || tempMessage.contains("hi")  {
        return "Hello there"
    } else if tempMessage.contains("goodbye") {
        return "Talk to you later!"
    } else if tempMessage.contains("color")  {
        modresposta += 1
        return "well my favorite color is blue,it reminds me the sky and the sea,what about yours?"
    }
    if modresposta == 1{
        modresposta += 1
        return "well,I don't know if you noticed but I'm a robot🤖 is that okay for you?"

    }
   if modresposta == 2{
       modresposta += 1
        return "I mean you probably just unzipped me on your Ipad or mac right???????"
    }
    if modresposta == 3{
        modresposta += 1
        return "I have like ZERO idea of what you are answering right now,so don't curse me!"
    }
    if modresposta == 4{
        modresposta += 1
        return "yeah yeah,as I was saying,I'm robot that didn't pass the Turing Test and I was programmed to ask you to press the nextpage button down bellow and find out what is a turing test and why I didn't pass it LOL🤣(dont worry you can talk to me later)"
    }
    
    else {
        
        
        
        if modresposta2 == 1 {
            modresposta2 += 1
            return "Is there anything I can tell you?🔴🟠🟡🟢🔵🟣⚫️⚪️"}
        if modresposta2 == 2 {
            modresposta2 += 1
            return "you want to know my favorite *****"}
        if modresposta2 == 3 {
            modresposta2 += 1
            return "It starts with a C,It ends with an r,kids know it,what it is?"}
        if modresposta2 == 4 {
            modresposta2 += 1
            return "okay I will write for you:WHATS YOUR FAVORITE C-O-L-O-R?"}
        else{return "😤"}
    }
}
