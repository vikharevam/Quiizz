//
//  QuizBrain.swift
//  Quiizz
//
//  Created by Александр Вихарев on 13.04.2023.
//

import Foundation

struct QuizBrain {
    let quizz = [
        Question(q: "Какой самый большой орган у человека?",
                 a: ["Рожа", "Кожа", "Нос"],
                 correctAnswer: "Кожа"),
        Question(q: "Сколько стоят нагетсы в BurgerKing?",
                 a: ["25$", "69 рублей", "100500"],
                 correctAnswer: "69 рублей"),
        Question(q: "Как расшифровывается ИМТ?",
                 a: ["Индекс Массы Тела", "Игорь Моет Трактор", "И Мне Такую"],
                 correctAnswer: "Индекс Массы Тела"),
        Question(q: "Ева съела колбасу...",
                 a: ["я ей чаппи принесу", "я сейчас портфель несу" , "я сейчас все обо#cу"],
                 correctAnswer: "я сейчас все обо#cу")
//        Question(q: "In past times, what would a gentleman keep in his fob pocket?",
//                 a: ["Notebook", "Handkerchief", "Watch"],
//                 correctAnswer: "Watch"),
//        Question(q: "How would one say goodbye in Spanish?",
//                 a: ["Au Revoir", "Adiós", "Salir"],
//                 correctAnswer: "Adiós"),
//        Question(q: "Which of these colours is NOT featured in the logo for Google?",
//                 a: ["Green", "Orange", "Blue"],
//                 correctAnswer: "Orange"),
//        Question(q: "What alcoholic drink is made from molasses?",
//                 a: ["Rum", "Whisky", "Gin"],
//                 correctAnswer: "Rum"),
//        Question(q: "What type of animal was Harambe?",
//                 a: ["Panda", "Gorilla", "Crocodile"],
//                 correctAnswer: "Gorilla"),
//        Question(q: "Where is Tasmania located?",
//                 a: ["Indonesia", "Australia", "Scotland"],
//                 correctAnswer: "Australia")
        
    ]
        //        Question(q: "Строительство Эйфелевой башни было завершено 31 марта 1887 года.", a: "Ложь"),
        //        Question(q: "Молнию можно увидеть раньше, чем услышать, потому что свет распространяется быстрее звука.", a: "Правда"),
        //
        //        Question(q: "Ватикан — это страна.", a: "Правда"),
        //        Question(q: "Мельбурн — столица Австралии.", a: "Ложь"),
        //        Question(q: "Пенициллин был открыт во Вьетнаме для лечения малярии.", a: "Ложь"),
        //        Question(q: "Гора Фудзи - самая высокая гора в Японии.", a: "Правда"),
        //        Question(q: "Брокколи содержит больше витамина С, чем лимоны.", a: "Правда"),
        //        Question(q: "Череп – самая крепкая кость в человеческом теле.", a: "Ложь"),
        //        Question(q: "Лампочки были изобретением Томаса Эдисона.", a: "Ложь"),
        //        Question(q: "Черный ящик в самолете черный.", a: "Ложь"),
        //        Question(q: "Помидоры - это фрукты.", a: "Ложь"),
        //        Question(q: "Депрессия является основной причиной инвалидности во всем мире.", a: "Правда"),
        //        Question(q: "Клеопатра была египетского происхождения.", a: "Ложь"),
        //        Question(q: "Вы можете чихать во сне.", a: "Ложь"),
        //        Question(q: "Бананы - это ягоды.", a: "Правда"),
        //        Question(q: "Кока-кола есть во всех странах мира.", a: "Ложь"),
        //        Question(q: "Шелк паука когда-то использовался для изготовления гитарных струн.", a: "Ложь"),
        //        Question(q: "Кокос — это орех.", a: "Ложь")
        
    
    var questionNumber = 0
    var score = 0
    
    
    func getScore() -> String{
        let scoreValue = "Счет: \(score)"
        return scoreValue
        
    }
    
    
    mutating func checkAnswer(answer userAnswer: String) -> Bool {
        if userAnswer == quizz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
        
    }
    
    
    
    func getQuetionText() -> String {
        return quizz[questionNumber].text
        
        
    }
    
    func getAnswer() -> [String] {
        return quizz[questionNumber].answer
    }
    
                     
                     
    func getProgress() -> Float{
        return Float(questionNumber + 1 )/Float(quizz.count)
        
    }
    
    
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quizz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
        
    }
    
}

