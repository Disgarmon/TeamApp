//
//  File.swift
//  TeamApp
//
//  Created by Elenka on 27.07.2022.
//

class DataStore {
    static let shared = DataStore()
    
    let titles = [
        "Аладдин", "title2", "title3",
        "title4", "title5"
    ]
    
    let descriptions = [
        "description1", "description2", "description3",
        "description4", "description5"
    ]
    let covers = [
        "aladdin", "cover2", "cover3",
        "cover4", "cover5"
    ]
    let images = [
        ["aladdin", "images2", "images3", "images4"],
        ["images1", "images2", "images3", "images4"],
        ["images1", "images2", "images3", "images4"],
        ["images1", "images2", "images3", "images4"],
        ["images1", "images2", "images3", "images4"]
    ]
    let phrases = [
        ["phrases1", "phrases2", "phrases3", "phrases4"],
        ["phrases1", "phrases2", "phrases3", "phrases4"],
        ["phrases1", "phrases2", "phrases3", "phrases4"],
        ["phrases1", "phrases2", "phrases3", "phrases4"],
        ["phrases1", "phrases2", "phrases3", "phrases4"]
    ]
    let questions = [
        "questions1", "questions2", "questions3",
        "questions4", "questions5"
    ]
    let answers = [
        ["answers1", "answers2", "answers3", "answers4"],
        ["answers1", "answers2", "answers3", "answers4"],
        ["answers1", "answers2", "answers3", "answers4"],
        ["answers1", "answers2", "answers3", "answers4"],
        ["answers1", "answers2", "answers3", "answers4"]
    ]
    
    private init() {}
}


