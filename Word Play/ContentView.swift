//
//  ContentView.swift
//  Word Play
//
//  Created by Phillip Mantatsky on 10/16/23.
//

import SwiftUI
struct Words{
    var noun0 = ""
    var animal = ""
    var noise = ""
    var adjective0 = ""
}
struct CustomTextField: View {
    let placeholder: String
    let bindingText: Binding<String>
    
    var body: some View {
        TextField(placeholder, text: bindingText)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
              Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "adjective", bindingText: $words.adjective0)
                        .multilineTextAlignment(.center)
                }
                HStack {
                    CustomTextField(placeholder: "noun", bindingText: $words.noun0)
                        .multilineTextAlignment(.center)
                }
                HStack {
                    CustomTextField(placeholder: "animal", bindingText: $words.animal)
                        .multilineTextAlignment(.center)
                }
                HStack{
                    CustomTextField(placeholder: "noise", bindingText: $words.noise)
                        .multilineTextAlignment(.center)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
