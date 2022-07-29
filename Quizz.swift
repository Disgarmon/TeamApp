//
//  Quizz.swift
//  TeamApp
//
//  Created by Денис Курлыков on 28.07.2022.
//

import Foundation

struct Question {
    let title: String
    //let image: UIImage?
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "2 + 2 ?",
                //image: nil,
                answers: [
                    Answer(title: "4", correct: true),
                    Answer(title: "1"),
                    Answer(title: "5"),
                    Answer(title: "10"),
                    Answer(title: "20")
                ]
            ),
            Question(
                title: "1 + 1 ?",
                //image: nil,
                answers: [
                    Answer(title: "2", correct: true),
                    Answer(title: "1"),
                    Answer(title: "7"),
                    Answer(title: "6"),
                    Answer(title: "30")
                ]
            ),
            Question(
                title: "10 + 2 ?",
                //image: nil,
                answers: [
                    Answer(title: "12", correct: true),
                    Answer(title: "1"),
                    Answer(title: "5"),
                    Answer(title: "8"),
                    Answer(title: "15")
                ]
            ),
            Question(
                title: "15 + 15 ?",
                //image: nil,
                answers: [
                    Answer(title: "30", correct: true),
                    Answer(title: "46"),
                    Answer(title: "100"),
                    Answer(title: "16"),
                    Answer(title: "18")
                ]
            ),
            Question(
                title: "20 + 20 ?",
                //image: nil,
                answers: [
                    Answer(title: "40", correct: true),
                    Answer(title: "46"),
                    Answer(title: "100"),
                    Answer(title: "16"),
                    Answer(title: "18")
                ]
            )
        ]
    }
}


struct Answer {
    let title: String
    let correct: Bool
    
    init(title: String, correct: Bool = false) {
        self.title = title
        self.correct = correct
    }
}
