//
//  Person.swift
//  TeamApp
//
//  Created by Дмитрий Дуров on 28.07.2022.
//

struct Person {
    let name: String
    let surname: String
    let position: String
    let photo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person]{
        [
            Person(name: "Daniil", surname: "Lebedev", position: "Team lead", photo: "daniil"),
            Person(name: "Anton", surname: "Polin", position: "Developer", photo: "anton"),
            Person(name: "Denis", surname: "Kurlykov", position: "Developer", photo: "denis"),
            Person(name: "Lena", surname: "", position: "Developer", photo: "lena"),
            Person(name: "Arseniy", surname: "", position: "Developer", photo: "arseniy"),
            Person(name: "Dmitrii", surname: "Durov", position: "Developer", photo: "dmitrii")
        ]
    }
}

