//
//  HomeView.swift
//  JP Verb Type
//
//  Created by Jimmy Zhao on 2025/04/07.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink("Verb Conjugation Practice") {
                    VerbConjugationView()
                }
                .buttonStyle(.borderedProminent)

                NavigationLink("Flashcard Practice (Adverbs)") {
                    FlashcardPracticeView()
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Japanese Practice")
            .padding()
        }
    }
}
