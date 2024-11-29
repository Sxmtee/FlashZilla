//
//  Card.swift
//  FlashZilla
//
//  Created by mac on 28/11/2024.
//

import Foundation

struct Card: Codable, Hashable, Identifiable {
    var id = UUID()
    var prompt: String
    var answer: String
    
    static let example = Card(
        prompt: "Who was my second ever girlfriend?",
        answer: "Chiamaka Azuh"
    )
}
