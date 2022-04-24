var address = 0
var truth = 0
var draw = 0
var otheranswer = 0
var work = 0
func pegarRespostaSmart(message:String) -> String{
    
    let newMessage = message.lowercased()
    if newMessage.contains("hello")  {
        return "Hello there"
    }
    if newMessage.contains("live") && address == 0{
        address += 1
        return "THAT’S PRIVATE! (But if you ask me again there is nothing I can do)"
    }
    else if newMessage.contains("live") && address == 1{
        return "I was born in Manaus-Brazil but now I live in your Mac or iPad 😆, BTW Gabriel told me that you guys have to send a jacket 🧥"
    }
    
    else if newMessage.contains("name") && newMessage.contains("b.o.t.e"){
        
        return "Well,basically Gabriel choose it,It’s how Brazilians🇧🇷 pronounce Bot"
    }
    
    else if newMessage.contains("turing"){
        return "it's the biggest challenge of my life (3 weeks),It measures if a machine like me can speak like a human but doesn’t really measures intelligence 🧠 (which is a complicated concept)."
        
    }
    else  if newMessage.contains("siri"){
        return "Don't wanna talk about it💔"
    }
    else if newMessage.contains("best robots"){
        return "1 - R2-D2\n\n2- terminator\n\n3- Wall-E"
    }
    else if newMessage.contains("truth") && truth == 0{
        truth += 1
        return "NO"
    }
    else if newMessage.contains("truth") && truth == 1{
        truth += 1
        return "I JUST CAN’T"
    }
    else if newMessage.contains("truth") && truth == 2{
        truth += 1
        return "PLEASE STOP"
    }
    else if newMessage.contains("truth") && truth == 3{
        truth += 1
        return "😭 😭 😭 😭 😭 😭 😭 😭 😭 😭 😭 😭 😭 😭 😭 😭"
    }
    else if newMessage.contains("truth") && truth == 4{
        truth = 0
        return "OKAY.I'M A ROBOT THAT IS AFRAID OF DARK😔"
    }
    else if newMessage.contains("draw") && draw == 0 {
        draw += 1
            return desenho1
    }
    else if newMessage.contains("draw") && draw == 1 {
        draw += 1
            return desenho2
    }
    else if newMessage.contains("draw") && draw == 2 {
        draw += 1
            return desenho3
    }
    else if newMessage.contains("draw") && draw == 3 {
        draw = 0
            return desenho4
    }
    else if newMessage.contains("work") {
        work = 1
            return "basically my answers are based in a word you type, for example if you type pineapple I will answer something related to it"
    }
    else if newMessage.contains("pineapple") && work == 1{
            return "LOL,you trusted a bot tha didn't pass the turing test🤣"
    }
    
    else {
        if otheranswer == 0 {otheranswer += 1;return "what are you talking about?"}
        if otheranswer == 1 {otheranswer += 1;return "I can't understand 😔"}
        if otheranswer == 2 {otheranswer += 1;return "Next time we talk to eachother I will understand ok 😀"}
        if otheranswer == 3 {otheranswer += 1;return "Tell siri that I love her"}
        else{ return "😔"}
       
        
    }
    
    
}
