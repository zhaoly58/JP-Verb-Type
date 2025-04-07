//
//  FlashcardItem.swift
//  JP Verb Type
//
//  Created by Jimmy Zhao on 2025/04/07.
//
import SwiftUI

struct FlashcardItem: Identifiable {
    let id = UUID()
    let word: String
    let correctMeaning: String
    let options: [String]
}
