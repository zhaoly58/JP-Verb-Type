//
//  FlashcardPracticeView.swift
//  JP Verb Type
//
//  Created by Jimmy Zhao on 2025/04/07.
//
import SwiftUI

struct FlashcardPracticeView: View {
    @State private var currentIndex = 0
    @State private var selectedOption: String? = nil
    @State private var showResult = false
    
    let flashcards: [FlashcardItem] = [
        FlashcardItem(word: "ゆっくり", correctMeaning: "slowly", options: ["quickly", "slowly", "noisily", "heavily"]),
        FlashcardItem(word: "びっくり", correctMeaning: "surprised", options: ["angry", "surprised", "bored", "sleepy"]),
        FlashcardItem(word: "しっかり", correctMeaning: "firmly", options: ["roughly", "firmly", "lazily", "fast"]),
        FlashcardItem(word: "のんびり", correctMeaning: "leisurely", options: ["strictly", "leisurely", "roughly", "heavily"]),
        FlashcardItem(word: "きっぱり", correctMeaning: "clearly", options: ["softly", "clearly", "quickly", "gradually"]),
        FlashcardItem(word: "ぐっすり", correctMeaning: "soundly (sleep)", options: ["noisily", "happily", "soundly (sleep)", "awkwardly"]),
        FlashcardItem(word: "たっぷり", correctMeaning: "plenty", options: ["few", "slowly", "plenty", "firmly"]),
        FlashcardItem(word: "こっそり", correctMeaning: "secretly", options: ["boldly", "secretly", "safely", "sharply"]),
        FlashcardItem(word: "にっこり", correctMeaning: "smilingly", options: ["cryingly", "angrily", "smilingly", "surprised"]),
        FlashcardItem(word: "うっかり", correctMeaning: "carelessly", options: ["accurately", "carelessly", "safely", "roughly"]),
        FlashcardItem(word: "はっきり", correctMeaning: "clearly", options: ["quietly", "clearly", "heavily", "secretly"]),
        FlashcardItem(word: "じっくり", correctMeaning: "deliberately", options: ["carelessly", "deliberately", "instantly", "awkwardly"]),
        FlashcardItem(word: "すっかり", correctMeaning: "completely", options: ["slightly", "completely", "gradually", "briefly"]),
        FlashcardItem(word: "めっきり", correctMeaning: "remarkably", options: ["softly", "remarkably", "noisily", "slowly"]),
        FlashcardItem(word: "ふらふら", correctMeaning: "unsteadily", options: ["steadily", "unsteadily", "quickly", "roughly"]),
        FlashcardItem(word: "ぴったり", correctMeaning: "perfectly", options: ["lightly", "roughly", "perfectly", "awkwardly"]),
        FlashcardItem(word: "たいてい", correctMeaning: "usually", options: ["rarely", "usually", "loudly", "sleepily"]),
        FlashcardItem(word: "ちゃんと", correctMeaning: "properly", options: ["sloppily", "properly", "hastily", "secretly"]),
        FlashcardItem(word: "どんどん", correctMeaning: "rapidly", options: ["gently", "rapidly", "secretly", "firmly"]),
        FlashcardItem(word: "いきいき", correctMeaning: "lively", options: ["calmly", "lively", "secretly", "firmly"]),
        FlashcardItem(word: "がっかり", correctMeaning: "disappointed", options: ["pleased", "disappointed", "confused", "awkward"]),
        FlashcardItem(word: "そっくり", correctMeaning: "identical", options: ["different", "identical", "similar", "opposite"]),
        FlashcardItem(word: "うろうろ", correctMeaning: "wandering", options: ["standing", "wandering", "rushing", "yelling"]),
        FlashcardItem(word: "どきどき", correctMeaning: "heartbeat (nervous)", options: ["heartbeat (nervous)", "trembling", "yawning", "whistling"]),
        FlashcardItem(word: "にこにこ", correctMeaning: "smiling", options: ["frowning", "yawning", "smiling", "crying"]),
        FlashcardItem(word: "ばったり", correctMeaning: "unexpectedly", options: ["unexpectedly", "slowly", "hesitantly", "calmly"]),
        FlashcardItem(word: "ぐったり", correctMeaning: "exhausted", options: ["energetic", "tired", "exhausted", "relaxed"]),
        FlashcardItem(word: "きらきら", correctMeaning: "sparkling", options: ["glowing", "sparkling", "quiet", "heavy"]),
        FlashcardItem(word: "ばらばら", correctMeaning: "scattered", options: ["together", "scattered", "organized", "gathered"]),
        FlashcardItem(word: "ぺらぺら", correctMeaning: "fluently", options: ["slowly", "fluently", "stumbling", "quietly"]),
        FlashcardItem(word: "わくわく", correctMeaning: "excited", options: ["nervous", "calm", "excited", "tired"]),
        FlashcardItem(word: "ぼんやり", correctMeaning: "absent-mindedly", options: ["absent-mindedly", "carefully", "steadily", "seriously"]),
        FlashcardItem(word: "びっくり", correctMeaning: "surprised", options: ["angry", "surprised", "bored", "sleepy"]),
        FlashcardItem(word: "しっかり", correctMeaning: "firmly", options: ["roughly", "firmly", "lazily", "fast"]),
        FlashcardItem(word: "のんびり", correctMeaning: "leisurely", options: ["strictly", "leisurely", "roughly", "heavily"]),
        FlashcardItem(word: "きっぱり", correctMeaning: "clearly", options: ["softly", "clearly", "quickly", "gradually"]),
        FlashcardItem(word: "ぐっすり", correctMeaning: "soundly (sleep)", options: ["noisily", "happily", "soundly (sleep)", "awkwardly"]),
        FlashcardItem(word: "たっぷり", correctMeaning: "plenty", options: ["few", "slowly", "plenty", "firmly"]),
        FlashcardItem(word: "こっそり", correctMeaning: "secretly", options: ["boldly", "secretly", "safely", "sharply"]),
        FlashcardItem(word: "にっこり", correctMeaning: "smilingly", options: ["cryingly", "angrily", "smilingly", "surprised"]),
        FlashcardItem(word: "うっかり", correctMeaning: "carelessly", options: ["accurately", "carelessly", "safely", "roughly"]),
        FlashcardItem(word: "はっきり", correctMeaning: "clearly", options: ["quietly", "clearly", "heavily", "secretly"]),
        FlashcardItem(word: "じっくり", correctMeaning: "deliberately", options: ["carelessly", "deliberately", "instantly", "awkwardly"]),
        FlashcardItem(word: "すっかり", correctMeaning: "completely", options: ["slightly", "completely", "gradually", "briefly"]),
        FlashcardItem(word: "めっきり", correctMeaning: "remarkably", options: ["softly", "remarkably", "noisily", "slowly"]),
        FlashcardItem(word: "ふらふら", correctMeaning: "unsteadily", options: ["steadily", "unsteadily", "quickly", "roughly"]),
        FlashcardItem(word: "ぴったり", correctMeaning: "perfectly", options: ["lightly", "roughly", "perfectly", "awkwardly"]),
        FlashcardItem(word: "たいてい", correctMeaning: "usually", options: ["rarely", "usually", "loudly", "sleepily"]),
        FlashcardItem(word: "ちゃんと", correctMeaning: "properly", options: ["sloppily", "properly", "hastily", "secretly"]),
        FlashcardItem(word: "どんどん", correctMeaning: "rapidly", options: ["gently", "rapidly", "secretly", "firmly"]),
        FlashcardItem(word: "いきいき", correctMeaning: "lively", options: ["calmly", "lively", "secretly", "firmly"]),
        FlashcardItem(word: "がっかり", correctMeaning: "disappointed", options: ["pleased", "disappointed", "confused", "awkward"]),
        FlashcardItem(word: "そっくり", correctMeaning: "identical", options: ["different", "identical", "similar", "opposite"]),
        FlashcardItem(word: "びっくり", correctMeaning: "surprised", options: ["angry", "surprised", "bored", "sleepy"]),
        FlashcardItem(word: "しっかり", correctMeaning: "firmly", options: ["roughly", "firmly", "lazily", "fast"])
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Text(flashcards[currentIndex].word)
                .font(.largeTitle)
            
            ForEach(flashcards[currentIndex].options, id: \.self) { option in
                Button(action: {
                    selectedOption = option
                    showResult = true
                }) {
                    Text(option)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(buttonColor(for: option))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(showResult)
            }
            
            if showResult {
                Button(action: {currentIndex = (currentIndex + 1) % flashcards.count
                    selectedOption = nil
                    showResult = false})
                {
                    
                    Text("Next")
                        .foregroundColor(.green)
                        .frame(width: UIScreen.main.bounds.width*0.2, height: 50, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.green, lineWidth: 1)
                            
                        )
                }
                
            }
        }
        .padding()
        .navigationTitle("Flashcards")
    }
    
    private func buttonColor(for option: String) -> Color {
        guard showResult else { return .blue }
        if option == flashcards[currentIndex].correctMeaning {
            return .green
        } else if option == selectedOption {
            return .red
        } else {
            return .gray
        }
    }
}
