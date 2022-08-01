//
//  QuestionsViewController.swift
//  TeamApp
//
//  Created by Денис Курлыков on 28.07.2022.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionProgressView: UIProgressView!
    
    @IBOutlet var buttonsStackView: UIStackView!
    @IBOutlet var answearButtons: [UIButton]!
    
    @IBOutlet var imageView: UIImageView!
    
    private let questions = Question.getQuestions()
    private var answersChosen: [Answer] = []
    private var questionIndex = 0
    private var curentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let
                resultVC = segue.destination as? ResultViewController
        else { return }
        resultVC.answers = answersChosen
    }
    
    @IBAction func buttonAswerPressed(_ sender: UIButton) {
        guard let buttonIndex = answearButtons.firstIndex(of: sender)
        else { return }
        let answer = curentAnswers[buttonIndex]
        answersChosen.append(answer)
        nextQuestion()
    }
}

//MARK: - Private Method
extension QuestionsViewController {
    private func updateUI() {
        // Get qurent question
        let curentQuestion = questions[questionIndex]
        
        // Set qurent question for question lable
        questionLabel.text = curentQuestion.title
        
        // Calculate progress
        let totalProgress = Float(questionIndex) /
        Float(questions.count)
        
        // Set progress for questionProgressView
        questionProgressView.setProgress(totalProgress, animated: true)
        
        // Set navigation title
        title = "Вопрос № \(questionIndex) из \(questions.count)"
        
        showButtonsStackWiew(with: curentAnswers)
        
        imageView.image = UIImage(named: questions[questionIndex].image)
    }
    
    private func showButtonsStackWiew(with answers: [Answer]) {
        
        for (button, answer) in zip(answearButtons, answers) {
            button.setTitle(answer.title, for: .normal)
        }
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
            return
        }
        
        performSegue(withIdentifier: "showResult", sender: nil)
    }
}
