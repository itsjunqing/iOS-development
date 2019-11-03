//
//  Question.swift
//  Quizzler
//
//  Created by Jun Qing Lim on 2/1/2019.
//  Copyright (c) 2019 Jun Qing Lim. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}

/*class myOtherClass {
    
    let question = Question(text: "What's the meaning of life?", correctAnswer: true)
    let question2 = Question(text: "Who's there?", correctAnswer: false)
}*/
