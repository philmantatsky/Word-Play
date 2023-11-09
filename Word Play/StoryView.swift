//
//  StoryView.swift
//  Word Play
//
//  Created by Phillip Mantatsky on 10/18/23.
//

import SwiftUI


struct StoryView: View {
    let words: Words
    
    // Helper function to generate the story
    func writeStory() -> String {
        return "A vacation is when you take a trip to some \(words.adjective0) place with your \(words.adjective0) family. Usually you go to some place that is near a/an \(words.noun0) or up on a/an \(words.noun1). A good vacation place is one where you can ride \(words.pluralNoun) or play \(words.game) or go hunting for \(words.pluralNoun0). I like to spend my time \(words.verbEndingIng) or \(words.verbEndingIng0)."
        
    }
    
    
    var body: some View {
        Text(writeStory())
            .multilineTextAlignment(.center)
                        .padding()
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}


