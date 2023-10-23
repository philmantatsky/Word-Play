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
        return "\(words.adjective0) Macdonald had a \(words.noun0), E-I-E-I-O and on that \(words.noun0) he had an \(words.animal), E-I-E-I-O with a \(words.noise) \(words.noise) here and a \(words.noise) \(words.noise) there, here a \(words.noise), there a \(words.noise), everywhere a \(words.noise) \(words.noise), \(words.adjective0) Macdonald had a \(words.noun0), E-I-E-I-O."
    }
    
    var body: some View {
        Text(writeStory())
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}


