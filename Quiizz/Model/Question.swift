//
//  File.swift
//  Quiizz
//
//  Created by Александр Вихарев on 11.04.2023.
//

import Foundation



struct Question {
    var text: String
    var answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }

}



