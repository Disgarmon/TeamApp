//
//  Quizz.swift
//  TeamApp
//
//  Created by Денис Курлыков on 28.07.2022.
//

import Foundation

struct Question {
    let title: String
    let image: String
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "В каком городе проходит основной сюжет ?",
                image: "AladinQuizz",
                answers: [
                    Answer(title: "Аграба", correct: true),
                    Answer(title: "Загреб"),
                    Answer(title: "Москва"),
                    Answer(title: "Кабул"),
                    Answer(title: "Бишкек")
                ]
            ),
            Question(
                title: "Как зовут лучшего друга Ариэль ?",
                image: "ArielQuizz",
                answers: [
                    Answer(title: "Флаундер", correct: true),
                    Answer(title: "Урсула"),
                    Answer(title: "Тритон"),
                    Answer(title: "Себастьян"),
                    Answer(title: "Эрик")
                ]
            ),
            Question(
                title: "Как зовут мышь в мультфильме Чип и Дайл ?",
                image: "ChipDaleQuizz",
                answers: [
                    Answer(title: "Рокки", correct: true),
                    Answer(title: "Толстопуз"),
                    Answer(title: "Рокки Бальбоа"),
                    Answer(title: "Вжик"),
                    Answer(title: "Толстосум")
                ]
            ),
            Question(
                title: "Как зовут приемную дочь Черного плаща ?",
                image: "DarkwingDuckQuizz",
                answers: [
                    Answer(title: "Гусена", correct: true),
                    Answer(title: "Моргана"),
                    Answer(title: "Зигзаг Маккряк"),
                    Answer(title: "Громилас"),
                    Answer(title: "Нептуния")
                ]
            ),
            Question(
                title: "Как зовут триллионера в утиных исторях ?",
                image: "DuckTalesQuizz",
                answers: [
                    Answer(title: "Скрудж Макдак", correct: true),
                    Answer(title: "Дилл"),
                    Answer(title: "Билли"),
                    Answer(title: "Вилли"),
                    Answer(title: "миссис Клювдия")
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
