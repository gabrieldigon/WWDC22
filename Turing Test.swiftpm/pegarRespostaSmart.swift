var modresposta1 = 0
func pegarRespostaSmart(message:String) -> String{
   
    var newMessage = message.lowercased()
    
    if newMessage.contains("live") && modresposta1 == 0{
        modresposta1 += 1
        return "THAT’S PRIVATE! (But if you ask me again there is nothing I can do)"

    }
    if newMessage.contains("live") && modresposta1 == 1{
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
   
    else {
        return "ola\(modresposta1)"
        
    }
    
    
}
