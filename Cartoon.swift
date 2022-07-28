//
//  Model.swift
//  TeamApp
//
//  Created by Elenka on 27.07.2022.
//

struct Cartoon {
    let title: String
    let description: String
    let cover: String
    let images: [String]
    let phrases: [String]
    let quiz: Quiz
}

struct Quiz {
    let question: String
    let answers: [String]
}

extension Cartoon {
    static func getCartoonList() -> [Cartoon] {
        
        var cartoons: [Cartoon] = []
        let dataStore = DataStore.shared
        
        let iterationCount = min(
            dataStore.titles.count,
            dataStore.descriptions.count,
            dataStore.covers.count,
            dataStore.images.count,
            dataStore.phrases.count,
            dataStore.questions.count,
            dataStore.answers.count
        )
        
        for index in 0..<iterationCount {
            let cartoon = Cartoon(
                title: dataStore.titles[index],
                description: dataStore.descriptions[index],
                cover: dataStore.covers[index],
                images: dataStore.images[index],
                phrases: dataStore.phrases[index],
                quiz: Quiz(
                    question: dataStore.questions[index],
                    answers: dataStore.answers[index]
                )
            )
            cartoons.append(cartoon)
        }
        return cartoons
    }
}
