//
//  Model.swift
//  TeamApp
//
//  Created by Daniil Lebedev on 27.07.2022.
//

struct Cartoon {
    let title: String
    let description: String
    let cover: String
    let imgs: [String]
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
        
        // дописать логику формирования массива в соответствии с dataSours
        return cartoons
    }
}
