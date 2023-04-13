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
            sender.backgroundColor = .green
            
        } else {
            sender.backgroundColor = .red
            
        }
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) {_ in
            self.updateUI()
        }
    }
    
    func updateUI(){
        questionsLabel.text = quizBrain.getQuetionText()
        trueButton.backgroundColor = .black
        trueButton.tintColor = .white
        trueButton.layer.cornerRadius = 20
        
        falseButton.backgroundColor = .black
        falseButton.tintColor = .white
        falseButton.layer.cornerRadius = 20
         
        progressBar.progress = quizBrain.getProgress()
        
        
    }
    
}







