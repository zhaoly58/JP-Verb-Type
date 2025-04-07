//
//  VerbConjugation.swift
//  JP Verb Type
//
//  Created by Jimmy Zhao on 2025/04/07.
//
import SwiftUI

struct VerbConjugation: Identifiable {
    let id = UUID()
    let baseVerb: String
    let answers: [ConjugationType: String]
}

enum ConjugationType: String, CaseIterable {
    case masu = "ます形"
    case nai = "ない形"
    case te = "て形"
    case ta = "た形"
    case potential = "可能形"
    case volitional = "意向形"
    case imperative = "命令形"
    case conditional = "条件形"
    case passive = "受身形"
    case causative = "使役形"
    case ba = "ば形"
    case tara = "たら形"
}
