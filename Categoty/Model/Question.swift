//
//  File.swift
//  Quiizz
//
//  Created by Александр Вихарев on 11.04.2023.
//

import Foundation



struct Question {
    var text: String
    var answer: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.text = q
        self.answer = a
        self.correctAnswer = correctAnswer
    }

}



