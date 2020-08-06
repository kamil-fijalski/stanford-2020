//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kamil Fijalski on 06/08/2020.
//  Copyright © 2020 FunctionReality. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🏆","🍒","🌎"]
        let numberOfUsedPairs: Int = Int.random(in: 1..<emojis.count+1)
        return MemoryGame<String>(numberOfPairsOfCards: numberOfUsedPairs) { pairIndex in
            return emojis[pairIndex]
        }
    }

    //MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
