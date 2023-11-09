//
//  ContentView.swift
//  Word Play
//
//  Created by Phillip Mantatsky on 10/16/23.
//

import SwiftUI
struct Words{
    var noun0 = ""
    var noun1 = ""
    var pluralNoun = ""
    var pluralNoun0 = ""
    var verbEndingIng = ""
    var verbEndingIng0 = ""
    var game = ""
    var adjective0 = ""
    var adjective1 = ""
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
                    CustomTextField(placeholder: "Adjective", bindingText: $words.adjective0)
                        .multilineTextAlignment(.center)
                    CustomTextField(placeholder: "Adjective", bindingText: $words.adjective1)
                        .multilineTextAlignment(.center)
                }
                HStack {
                    CustomTextField(placeholder: "Pural Noun", bindingText: $words.pluralNoun)
                        .multilineTextAlignment(.center)
                    CustomTextField(placeholder: "Pural Noun", bindingText: $words.pluralNoun0)
                        .multilineTextAlignment(.center)
                }
                HStack {
                    CustomTextField(placeholder: "Verb ending with -ing", bindingText: $words.verbEndingIng)
                        .multilineTextAlignment(.center)
                    CustomTextField(placeholder: "Verb ending with -ing", bindingText: $words.verbEndingIng0)
                        .multilineTextAlignment(.center)
                }
                HStack{
                    CustomTextField(placeholder: "Game", bindingText: $words.game)
                        .multilineTextAlignment(.center)
                }
                HStack{
                    CustomTextField(placeholder: "Noun", bindingText: $words.noun0)
                        .multilineTextAlignment(.center)
                    CustomTextField(placeholder: "Noun", bindingText: $words.noun1)
                        .multilineTextAlignment(.center)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
            .navigationTitle("Word Play")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
