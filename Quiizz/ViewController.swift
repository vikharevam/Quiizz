//
//  ViewController.swift
//  Quiizz
//
//  Created by Александр Вихарев on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quizz = [
        Question(q: "Строительство Эйфелевой башни было завершено 31 марта 1887 года.", a: "Ложь"),
        Question(q: "Молнию можно увидеть раньше, чем услышать, потому что свет распространяется быстрее звука.", a: "Правда"),
        
        Question(q: "Ватикан — это страна.", a: "Правда"),
        Question(q: "Мельбурн — столица Австралии.", a: "Ложь"),
        Question(q: "Пенициллин был открыт во Вьетнаме для лечения малярии.", a: "Ложь"),
        Question(q: "Гора Фудзи - самая высокая гора в Японии.", a: "Правда"),
        Question(q: "Брокколи содержит больше витамина С, чем лимоны.", a: "Правда"),
        Question(q: "Череп – самая крепкая кость в человеческом теле.", a: "Ложь"),
        Question(q: "Лампочки были изобретением Томаса Эдисона.", a: "Ложь"),
        Question(q: "Черный ящик в самолете черный.", a: "Ложь"),
        Question(q: "Помидоры - это фрукты.", a: "Ложь"),
        Question(q: "Депрессия является основной причиной инвалидности во всем мире.", a: "Правда"),
        Question(q: "Клеопатра была египетского происхождения.", a: "Ложь"),
        Question(q: "Вы можете чихать во сне.", a: "Ложь"),
        Question(q: "Бананы - это ягоды.", a: "Правда"),
        Question(q: "Кока-кола есть во всех странах мира.", a: "Ложь"),
        Question(q: "Шелк паука когда-то использовался для изготовления гитарных струн.", a: "Ложь"),
        Question(q: "Кокос — это орех.", a: "Ложь")
    ]
    
    var questionNumber = 0
    
    var timer = Timer()
    
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        progressBar.progress = Float(questionNumber)
    }
    
    
    
    @IBAction func answerButtonPassed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quizz[questionNumber].answer
        
        if questionNumber + 1 < quizz.count {
            questionNumber += 1
            
        } else {
            questionNumber = 0
        }
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = .green
            
        } else {
            sender.backgroundColor = .red
            
        }
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) {_ in
            self.updateUI()
        }
    }
    
    func updateUI(){
        questionsLabel.text = quizz[questionNumber].text
        trueButton.backgroundColor = .black
        trueButton.tintColor = .white
        trueButton.layer.cornerRadius = 20
        
        falseButton.backgroundColor = .black
        falseButton.tintColor = .white
        falseButton.layer.cornerRadius = 20
         
        progressBar.progress = Float(questionNumber + 1 )/Float(quizz.count)
        
        
    }
    
}







