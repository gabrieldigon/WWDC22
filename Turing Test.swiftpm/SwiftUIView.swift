import SwiftUI
public var a:[String] = ["ola", "2", "eai"]
public var b:[String] = ["falatu", "tmj", "opa"]
var c  = a.append(contentsOf: b)

struct ola: View {
    var body: some View {
        Text("ola")
            .onTapGesture {
                print(c)
            }
    }
        
}
