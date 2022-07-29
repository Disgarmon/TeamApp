//
//  ResultViewController.swift
//  TeamApp
//
//  Created by Денис Курлыков on 28.07.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        updateResult()
    }
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}

// MARK: - Private Methods
extension ResultViewController {
    private func updateResult() {
        
        var countRightAswer = 0
        
        let corrects = answers.map { $0.correct}
        
        for correct in corrects {
            if correct == true {
                countRightAswer += 1
            }
        }
        updateUI(countRightAswer)
    }
    
    private func updateUI(_ result: Int ) {
        switch result {
        case 1:
            resultLabel.text = "Вы ответили правильно на \(result) вопрос!"
        case 2, 3, 4:
            resultLabel.text = "Вы ответили правильно на \(result) вопроса!"
        default:
            resultLabel.text = "Вы ответили правильно на \(result) вопросов!"
        }
    }
}

