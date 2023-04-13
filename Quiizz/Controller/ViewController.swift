//
//  ViewController.swift
//  Quiizz
//
//  Created by Александр Вихарев on 11.04.2023.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var scoreTitle: UILabel!
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var choiceTree: UIButton!
    
    
    var quizBrain = QuizBrain()
   
    
    var timer = Timer()
    
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        progressBar.progress = quizBrain.getProgress()
    }
    
    
    
    @IBAction func answerButtonPassed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(answer: userAnswer)
        
        quizBrain.nextQuestion()
        
        
        if userGotItRight {
            playSound(nameSound: soundRight)
            sender.backgroundColor = .green
        } else {
            playSound(nameSound: soundWrong)
            sender.backgroundColor = .red
        }
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) {_ in
            self.updateUI()
        }
    }
    
    func updateUI(){
        questionsLabel.text = quizBrain.getQuetionText()
        
        let answerChoice = quizBrain.getAnswer()
        
        
        choiceOne.backgroundColor = .black
        choiceOne.tintColor = .white
        choiceOne.layer.cornerRadius = 20
        choiceOne.setTitle(answerChoice[0], for: .normal)
        
        choiceTwo.backgroundColor = .black
        choiceTwo.tintColor = .white
        choiceTwo.layer.cornerRadius = 20
        choiceTwo.setTitle(answerChoice[1], for: .normal)
        
        choiceTree.backgroundColor = .black
        choiceTree.tintColor = .white
        choiceTree.layer.cornerRadius = 20
        choiceTree.setTitle(answerChoice[2], for: .normal)
         
        scoreTitle.text = quizBrain.getScore()
        progressBar.progress = quizBrain.getProgress()
        
        
    }
    
}







