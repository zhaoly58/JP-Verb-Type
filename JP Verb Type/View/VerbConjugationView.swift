//
//  VerbConjugationView.swift
//  JP Verb Type
//
//  Created by Jimmy Zhao on 2025/04/07.
//

import SwiftUI

struct VerbConjugationView: View {
    //    @State private var userInputs: [String: String] = [:]
    //    @State private var isChecked = false
    
    @SwiftUI.State private var userInputs: [String: String] = [:]
    @SwiftUI.State private var isChecked: Bool = false
    
    //    private var userInputs: [String: String] = [:]
    //    private var isChecked = false
    
    let verbs: [VerbConjugation] = [
        // 一段動詞 (ru-verbs)
        VerbConjugation(
            baseVerb: "食べる",
            answers: [
                .masu: "食べます",
                .nai: "食べない",
                .te: "食べて",
                .ta: "食べた",
                .potential: "食べられる",
                .volitional: "食べよう",
                .imperative: "食べろ/食べなさい",
                .conditional: "食べれば",
                .passive: "食べられる",
                .causative: "食べさせる",
                .ba: "食べれば",
                .tara: "食べたら",
            ]),
        VerbConjugation(
            baseVerb: "見る",
            answers: [
                .masu: "見ます",
                .nai: "見ない",
                .te: "見て",
                .ta: "見た",
                .potential: "見られる",
                .volitional: "見よう",
                .imperative: "見ろ/見なさい",
                .conditional: "見れば",
                .passive: "見られる",
                .causative: "見させる",
                .ba: "見れば",
                .tara: "見たら",
            ]),
        VerbConjugation(
            baseVerb: "起きる",
            answers: [
                .masu: "起きます",
                .nai: "起きない",
                .te: "起きて",
                .ta: "起きた",
                .potential: "起きられる",
                .volitional: "起きよう",
                .imperative: "起きろ/起きなさい",
                .conditional: "起きれば",
                .passive: "起きられる",
                .causative: "起きさせる",
                .ba: "起きれば",
                .tara: "起きたら",
            ]),
        VerbConjugation(
            baseVerb: "寝る",
            answers: [
                .masu: "寝ます",
                .nai: "寝ない",
                .te: "寝て",
                .ta: "寝た",
                .potential: "寝られる",
                .volitional: "寝よう",
                .imperative: "寝ろ/寝なさい",
                .conditional: "寝れば",
                .passive: "寝られる",
                .causative: "寝させる",
                .ba: "寝れば",
                .tara: "寝たら",
            ]),
        VerbConjugation(
            baseVerb: "出る",
            answers: [
                .masu: "出ます",
                .nai: "出ない",
                .te: "出て",
                .ta: "出た",
                .potential: "出られる",
                .volitional: "出よう",
                .imperative: "出ろ/出なさい",
                .conditional: "出れば",
                .passive: "出られる",
                .causative: "出させる",
                .ba: "出れば",
                .tara: "出たら",
            ]),
        VerbConjugation(
            baseVerb: "教える",
            answers: [
                .masu: "教えます",
                .nai: "教えない",
                .te: "教えて",
                .ta: "教えた",
                .potential: "教えられる",
                .volitional: "教えよう",
                .imperative: "教えろ/教えなさい",
                .conditional: "教えれば",
                .passive: "教えられる",
                .causative: "教えさせる",
                .ba: "教えれば",
                .tara: "教えたら",
            ]),
        VerbConjugation(
            baseVerb: "信じる",
            answers: [
                .masu: "信じます",
                .nai: "信じない",
                .te: "信じて",
                .ta: "信じた",
                .potential: "信じられる",
                .volitional: "信じよう",
                .imperative: "信じろ/信じなさい",
                .conditional: "信じれば",
                .passive: "信じられる",
                .causative: "信じさせる",
                .ba: "信じれば",
                .tara: "信じたら",
            ]),
        VerbConjugation(
            baseVerb: "着る",
            answers: [
                .masu: "着ます",
                .nai: "着ない",
                .te: "着て",
                .ta: "着た",
                .potential: "着られる",
                .volitional: "着よう",
                .imperative: "着ろ/着なさい",
                .conditional: "着れば",
                .passive: "着られる",
                .causative: "着させる",
                .ba: "着れば",
                .tara: "着たら",
            ]),
        VerbConjugation(
            baseVerb: "投げる",
            answers: [
                .masu: "投げます",
                .nai: "投げない",
                .te: "投げて",
                .ta: "投げた",
                .potential: "投げられる",
                .volitional: "投げよう",
                .imperative: "投げろ/投げなさい",
                .conditional: "投げれば",
                .passive: "投げられる",
                .causative: "投げさせる",
                .ba: "投げれば",
                .tara: "投げたら",
            ]),
        VerbConjugation(
            baseVerb: "捨てる",
            answers: [
                .masu: "捨てます",
                .nai: "捨てない",
                .te: "捨てて",
                .ta: "捨てた",
                .potential: "捨てられる",
                .volitional: "捨てよう",
                .imperative: "捨てろ/捨てなさい",
                .conditional: "捨てれば",
                .passive: "捨てられる",
                .causative: "捨てさせる",
                .ba: "捨てれば",
                .tara: "捨てたら",
            ]),
        VerbConjugation(
            baseVerb: "覚える",
            answers: [
                .masu: "覚えます",
                .nai: "覚えない",
                .te: "覚えて",
                .ta: "覚えた",
                .potential: "覚えられる",
                .volitional: "覚えよう",
                .imperative: "覚えろ/覚えなさい",
                .conditional: "覚えれば",
                .passive: "覚えられる",
                .causative: "覚えさせる",
                .ba: "覚えれば",
                .tara: "覚えたら",
            ]),
        VerbConjugation(
            baseVerb: "見せる",
            answers: [
                .masu: "見せます",
                .nai: "見せない",
                .te: "見せて",
                .ta: "見せた",
                .potential: "見せられる",
                .volitional: "見せよう",
                .imperative: "見せろ/見せなさい",
                .conditional: "見せれば",
                .passive: "見せられる",
                .causative: "見せさせる",
                .ba: "見せれば",
                .tara: "見せたら",
            ]),
        VerbConjugation(
            baseVerb: "忘れる",
            answers: [
                .masu: "忘れます",
                .nai: "忘れない",
                .te: "忘れて",
                .ta: "忘れた",
                .potential: "忘れられる",
                .volitional: "忘れよう",
                .imperative: "忘れろ/忘れなさい",
                .conditional: "忘れれば",
                .passive: "忘れられる",
                .causative: "忘れさせる",
                .ba: "忘れれば",
                .tara: "忘れたら",
            ]),
        VerbConjugation(
            baseVerb: "開ける",
            answers: [
                .masu: "開けます",
                .nai: "開けない",
                .te: "開けて",
                .ta: "開けた",
                .potential: "開けられる",
                .volitional: "開けよう",
                .imperative: "開けろ/開けなさい",
                .conditional: "開ければ",
                .passive: "開けられる",
                .causative: "開けさせる",
                .ba: "開ければ",
                .tara: "開けたら",
            ]),
        VerbConjugation(
            baseVerb: "閉める",
            answers: [
                .masu: "閉めます",
                .nai: "閉めない",
                .te: "閉めて",
                .ta: "閉めた",
                .potential: "閉められる",
                .volitional: "閉めよう",
                .imperative: "閉めろ/閉めなさい",
                .conditional: "閉めれば",
                .passive: "閉められる",
                .causative: "閉めさせる",
                .ba: "閉めれば",
                .tara: "閉めたら",
            ]),
        VerbConjugation(
            baseVerb: "変える",
            answers: [
                .masu: "変えます",
                .nai: "変えない",
                .te: "変えて",
                .ta: "変えた",
                .potential: "変えられる",
                .volitional: "変えよう",
                .imperative: "変えろ/変えなさい",
                .conditional: "変えれば",
                .passive: "変えられる",
                .causative: "変えさせる",
                .ba: "変えれば",
                .tara: "変えたら",
            ]),
        VerbConjugation(
            baseVerb: "答える",
            answers: [
                .masu: "答えます",
                .nai: "答えない",
                .te: "答えて",
                .ta: "答えた",
                .potential: "答えられる",
                .volitional: "答えよう",
                .imperative: "答えろ/答えなさい",
                .conditional: "答えれば",
                .passive: "答えられる",
                .causative: "答えさせる",
                .ba: "答えれば",
                .tara: "答えたら",
            ]),
        VerbConjugation(
            baseVerb: "借りる",
            answers: [
                .masu: "借ります",
                .nai: "借りない",
                .te: "借りて",
                .ta: "借りた",
                .potential: "借りられる",
                .volitional: "借りよう",
                .imperative: "借りろ/借りなさい",
                .conditional: "借りれば",
                .passive: "借りられる",
                .causative: "借りさせる",
                .ba: "借りれば",
                .tara: "借りたら",
            ]),
        VerbConjugation(
            baseVerb: "考える",
            answers: [
                .masu: "考えます",
                .nai: "考えない",
                .te: "考えて",
                .ta: "考えた",
                .potential: "考えられる",
                .volitional: "考えよう",
                .imperative: "考えろ/考えなさい",
                .conditional: "考えれば",
                .passive: "考えられる",
                .causative: "考えさせる",
                .ba: "考えれば",
                .tara: "考えたら",
            ]),
        VerbConjugation(
            baseVerb: "調べる",
            answers: [
                .masu: "調べます",
                .nai: "調べない",
                .te: "調べて",
                .ta: "調べた",
                .potential: "調べられる",
                .volitional: "調べよう",
                .imperative: "調べろ/調べなさい",
                .conditional: "調べれば",
                .passive: "調べられる",
                .causative: "調べさせる",
                .ba: "調べれば",
                .tara: "調べたら",
            ]),
        VerbConjugation(
            baseVerb: "感じる",
            answers: [
                .masu: "感じます",
                .nai: "感じない",
                .te: "感じて",
                .ta: "感じた",
                .potential: "感じられる",
                .volitional: "感じよう",
                .imperative: "感じろ/感じなさい",
                .conditional: "感じれば",
                .passive: "感じられる",
                .causative: "感じさせる",
                .ba: "感じれば",
                .tara: "感じたら",
            ]),
        
        // 五段動詞 (u-verbs)
        VerbConjugation(
            baseVerb: "書く",
            answers: [
                .masu: "書きます",
                .nai: "書かない",
                .te: "書いて",
                .ta: "書いた",
                .potential: "書ける",
                .volitional: "書こう",
                .imperative: "書け/書きなさい",
                .conditional: "書けば",
                .passive: "書かれる",
                .causative: "書かせる",
                .ba: "書けば",
                .tara: "書いたら",
            ]),
        VerbConjugation(
            baseVerb: "飲む",
            answers: [
                .masu: "飲みます",
                .nai: "飲まない",
                .te: "飲んで",
                .ta: "飲んだ",
                .potential: "飲める",
                .volitional: "飲もう",
                .imperative: "飲め/飲みなさい",
                .conditional: "飲めば",
                .passive: "飲まれる",
                .causative: "飲ませる",
                .ba: "飲めば",
                .tara: "飲んだら",
            ]),
        VerbConjugation(
            baseVerb: "話す",
            answers: [
                .masu: "話します",
                .nai: "話さない",
                .te: "話して",
                .ta: "話した",
                .potential: "話せる",
                .volitional: "話そう",
                .imperative: "話せ/話しなさい",
                .conditional: "話せば",
                .passive: "話される",
                .causative: "話させる",
                .ba: "話せば",
                .tara: "話したら",
            ]),
        VerbConjugation(
            baseVerb: "読む",
            answers: [
                .masu: "読みます",
                .nai: "読まない",
                .te: "読んで",
                .ta: "読んだ",
                .potential: "読める",
                .volitional: "読もう",
                .imperative: "読め/読みなさい",
                .conditional: "読めば",
                .passive: "読まれる",
                .causative: "読ませる",
                .ba: "読めば",
                .tara: "読んだら",
            ]),
        VerbConjugation(
            baseVerb: "聞く",
            answers: [
                .masu: "聞きます",
                .nai: "聞かない",
                .te: "聞いて",
                .ta: "聞いた",
                .potential: "聞ける",
                .volitional: "聞こう",
                .imperative: "聞け/聞きなさい",
                .conditional: "聞けば",
                .passive: "聞かれる",
                .causative: "聞かせる",
                .ba: "聞けば",
                .tara: "聞いたら",
            ]),
        VerbConjugation(
            baseVerb: "泳ぐ",
            answers: [
                .masu: "泳ぎます",
                .nai: "泳がない",
                .te: "泳いで",
                .ta: "泳いだ",
                .potential: "泳げる",
                .volitional: "泳ごう",
                .imperative: "泳げ/泳ぎなさい",
                .conditional: "泳げば",
                .passive: "泳がれる",
                .causative: "泳がせる",
                .ba: "泳げば",
                .tara: "泳いだら",
            ]),
        VerbConjugation(
            baseVerb: "遊ぶ",
            answers: [
                .masu: "遊びます",
                .nai: "遊ばない",
                .te: "遊んで",
                .ta: "遊んだ",
                .potential: "遊べる",
                .volitional: "遊ぼう",
                .imperative: "遊べ/遊びなさい",
                .conditional: "遊べば",
                .passive: "遊ばれる",
                .causative: "遊ばせる",
                .ba: "遊べば",
                .tara: "遊んだら",
            ]),
        VerbConjugation(
            baseVerb: "死ぬ",
            answers: [
                .masu: "死にます",
                .nai: "死なない",
                .te: "死んで",
                .ta: "死んだ",
                .potential: "死ねる",
                .volitional: "死のう",
                .imperative: "死ね/死になさい",
                .conditional: "死ねば",
                .passive: "死なれる",
                .causative: "死なせる",
                .ba: "死ねば",
                .tara: "死んだら",
            ]),
        VerbConjugation(
            baseVerb: "走る",
            answers: [
                .masu: "走ります",
                .nai: "走らない",
                .te: "走って",
                .ta: "走った",
                .potential: "走れる",
                .volitional: "走ろう",
                .imperative: "走れ/走りなさい",
                .conditional: "走れば",
                .passive: "走られる",
                .causative: "走らせる",
                .ba: "走れば",
                .tara: "走ったら",
            ]),
        VerbConjugation(
            baseVerb: "買う",
            answers: [
                .masu: "買います",
                .nai: "買わない",
                .te: "買って",
                .ta: "買った",
                .potential: "買える",
                .volitional: "買おう",
                .imperative: "買え/買いなさい",
                .conditional: "買えば",
                .passive: "買われる",
                .causative: "買わせる",
                .ba: "買えば",
                .tara: "買ったら",
            ]),
        VerbConjugation(
            baseVerb: "言う",
            answers: [
                .masu: "言います",
                .nai: "言わない",
                .te: "言って",
                .ta: "言った",
                .potential: "言える",
                .volitional: "言おう",
                .imperative: "言え/言いなさい",
                .conditional: "言えば",
                .passive: "言われる",
                .causative: "言わせる",
                .ba: "言えば",
                .tara: "言ったら",
            ]),
        VerbConjugation(
            baseVerb: "歩く",
            answers: [
                .masu: "歩きます",
                .nai: "歩かない",
                .te: "歩いて",
                .ta: "歩いた",
                .potential: "歩ける",
                .volitional: "歩こう",
                .imperative: "歩け/歩きなさい",
                .conditional: "歩けば",
                .passive: "歩かれる",
                .causative: "歩かせる",
                .ba: "歩けば",
                .tara: "歩いたら",
            ]),
        VerbConjugation(
            baseVerb: "立つ",
            answers: [
                .masu: "立ちます",
                .nai: "立たない",
                .te: "立って",
                .ta: "立った",
                .potential: "立てる",
                .volitional: "立とう",
                .imperative: "立て/立ちなさい",
                .conditional: "立てば",
                .passive: "立たれる",
                .causative: "立たせる",
                .ba: "立てば",
                .tara: "立ったら",
            ]),
        VerbConjugation(
            baseVerb: "待つ",
            answers: [
                .masu: "待ちます",
                .nai: "待たない",
                .te: "待って",
                .ta: "待った",
                .potential: "待てる",
                .volitional: "待とう",
                .imperative: "待て/待ちなさい",
                .conditional: "待てば",
                .passive: "待たれる",
                .causative: "待たせる",
                .ba: "待てば",
                .tara: "待ったら",
            ]),
        VerbConjugation(
            baseVerb: "取る",
            answers: [
                .masu: "取ります",
                .nai: "取らない",
                .te: "取って",
                .ta: "取った",
                .potential: "取れる",
                .volitional: "取ろう",
                .imperative: "取れ/取りなさい",
                .conditional: "取れば",
                .passive: "取られる",
                .causative: "取らせる",
                .ba: "取れば",
                .tara: "取ったら",
            ]),
        VerbConjugation(
            baseVerb: "返す",
            answers: [
                .masu: "返します",
                .nai: "返さない",
                .te: "返して",
                .ta: "返した",
                .potential: "返せる",
                .volitional: "返そう",
                .imperative: "返せ/返しなさい",
                .conditional: "返せば",
                .passive: "返される",
                .causative: "返させる",
                .ba: "返せば",
                .tara: "返したら",
            ]),
        VerbConjugation(
            baseVerb: "行く",
            answers: [
                .masu: "行きます",
                .nai: "行かない",
                .te: "行って",
                .ta: "行った",
                .potential: "行ける",
                .volitional: "行こう",
                .imperative: "行け/行きなさい",
                .conditional: "行けば",
                .passive: "行かれる",
                .causative: "行かせる",
                .ba: "行けば",
                .tara: "行ったら",
            ]),
        VerbConjugation(
            baseVerb: "帰る",
            answers: [
                .masu: "帰ります",
                .nai: "帰らない",
                .te: "帰って",
                .ta: "帰った",
                .potential: "帰れる",
                .volitional: "帰ろう",
                .imperative: "帰れ/帰りなさい",
                .conditional: "帰れば",
                .passive: "帰られる",
                .causative: "帰らせる",
                .ba: "帰れば",
                .tara: "帰ったら",
            ]),
        VerbConjugation(
            baseVerb: "持つ",
            answers: [
                .masu: "持ちます",
                .nai: "持たない",
                .te: "持って",
                .ta: "持った",
                .potential: "持てる",
                .volitional: "持とう",
                .imperative: "持て/持ちなさい",
                .conditional: "持てば",
                .passive: "持たれる",
                .causative: "持たせる",
                .ba: "持てば",
                .tara: "持ったら",
            ]),
        VerbConjugation(
            baseVerb: "使う",
            answers: [
                .masu: "使います",
                .nai: "使わない",
                .te: "使って",
                .ta: "使った",
                .potential: "使える",
                .volitional: "使おう",
                .imperative: "使え/使いなさい",
                .conditional: "使えば",
                .passive: "使われる",
                .causative: "使わせる",
                .ba: "使えば",
                .tara: "使ったら",
            ]),
        VerbConjugation(
            baseVerb: "切る",
            answers: [
                .masu: "切ります",
                .nai: "切らない",
                .te: "切って",
                .ta: "切った",
                .potential: "切れる",
                .volitional: "切ろう",
                .imperative: "切れ/切りなさい",
                .conditional: "切れば",
                .passive: "切られる",
                .causative: "切らせる",
                .ba: "切れば",
                .tara: "切ったら",
            ]),
        VerbConjugation(
            baseVerb: "作る",
            answers: [
                .masu: "作ります",
                .nai: "作らない",
                .te: "作って",
                .ta: "作った",
                .potential: "作れる",
                .volitional: "作ろう",
                .imperative: "作れ/作りなさい",
                .conditional: "作れば",
                .passive: "作られる",
                .causative: "作らせる",
                .ba: "作れば",
                .tara: "作ったら",
            ]),
        VerbConjugation(
            baseVerb: "泣く",
            answers: [
                .masu: "泣きます",
                .nai: "泣かない",
                .te: "泣いて",
                .ta: "泣いた",
                .potential: "泣ける",
                .volitional: "泣こう",
                .imperative: "泣け/泣きなさい",
                .conditional: "泣けば",
                .passive: "泣かれる",
                .causative: "泣かせる",
                .ba: "泣けば",
                .tara: "泣いたら",
            ]),
        VerbConjugation(
            baseVerb: "笑う",
            answers: [
                .masu: "笑います",
                .nai: "笑わない",
                .te: "笑って",
                .ta: "笑った",
                .potential: "笑える",
                .volitional: "笑おう",
                .imperative: "笑え/笑いなさい",
                .conditional: "笑えば",
                .passive: "笑われる",
                .causative: "笑わせる",
                .ba: "笑えば",
                .tara: "笑ったら",
            ]),
        VerbConjugation(
            baseVerb: "勝つ",
            answers: [
                .masu: "勝ちます",
                .nai: "勝たない",
                .te: "勝って",
                .ta: "勝った",
                .potential: "勝てる",
                .volitional: "勝とう",
                .imperative: "勝て/勝ちなさい",
                .conditional: "勝てば",
                .passive: "勝たれる",
                .causative: "勝たせる",
                .ba: "勝てば",
                .tara: "勝ったら",
            ]),
        VerbConjugation(
            baseVerb: "負ける",
            answers: [
                .masu: "負けます",
                .nai: "負けない",
                .te: "負けて",
                .ta: "負けた",
                .potential: "負けられる",
                .volitional: "負けよう",
                .imperative: "負けろ/負けなさい",
                .conditional: "負ければ",
                .passive: "負けられる",
                .causative: "負けさせる",
                .ba: "負ければ",
                .tara: "負けたら",
            ]),
        VerbConjugation(
            baseVerb: "遊ぶ",
            answers: [
                .masu: "遊びます",
                .nai: "遊ばない",
                .te: "遊んで",
                .ta: "遊んだ",
                .potential: "遊べる",
                .volitional: "遊ぼう",
                .imperative: "遊べ/遊びなさい",
                .conditional: "遊べば",
                .passive: "遊ばれる",
                .causative: "遊ばせる",
                .ba: "遊べば",
                .tara: "遊んだら",
            ]),
        VerbConjugation(
            baseVerb: "休む",
            answers: [
                .masu: "休みます",
                .nai: "休まない",
                .te: "休んで",
                .ta: "休んだ",
                .potential: "休める",
                .volitional: "休もう",
                .imperative: "休め/休みな",
                .conditional: "休めば",
                .passive: "休める",
                .causative: "休めさせる",
                .ba: "休めば",
                .tara: "休んだら",
            ]),
    ]
    
    var body: some View {
        VStack {
            // Header row
            HStack {
                Text("動詞")
                    .fontWeight(.bold)
                    .frame(width: 80)
                ForEach(ConjugationType.allCases, id: \.self) { type in
                    Text(type.rawValue)
                        .fontWeight(.bold)
                        .frame(width: 100)
                }
            }
            
            ScrollView {
                VStack(spacing: 8) {
                    // Data rows
                    ForEach(verbs) { verb in
                        HStack {
                            Text(verb.baseVerb)
                                .fontWeight(.semibold)
                                .frame(width: 80)
                            ForEach(ConjugationType.allCases, id: \.self) {
                                type in
                                let key = "\(verb.id)-\(type.rawValue)"
                                TextField(
                                    "",
                                    text: Binding(
                                        get: { userInputs[key, default: ""] },
                                        set: { userInputs[key] = $0 }
                                    )
                                )
                                .padding(5)
                                .frame(width: 100, height: 40)
                                .background(
                                    isChecked
                                    ? (userInputs[key]?.trimmingCharacters(
                                        in: .whitespaces)
                                       == verb.answers[type]
                                       ? Color.green.opacity(0.3)
                                       : Color.red.opacity(0.3))
                                    : Color.gray.opacity(0.1)
                                )
                                .cornerRadius(5)
                                .disableAutocorrection(true)
                                .contentShape(Rectangle())
                            }
                        }
                        Divider()
                    }
                }
                .padding()
            }
            
            Button("回答を確認する") {
                isChecked = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Button("リセット") {
                userInputs = [:]
                isChecked = false
            }
            .foregroundColor(.red)
            .cornerRadius(10)
            .padding()
            
        }
        .padding()
        .navigationTitle("Verb Conjugation")
    }
}
