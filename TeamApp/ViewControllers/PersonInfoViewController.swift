//
//  PersonInfoViewController.swift
//  TeamApp
//
//  Created by Дмитрий Дуров on 28.07.2022.
//

import UIKit

class PersonInfoViewController: UIViewController {
    
    @IBOutlet weak var photoEmployeeImage: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoEmployeeImage.image = UIImage(named: person.photo)
        photoEmployeeImage.layer.cornerRadius = photoEmployeeImage.frame.height / 10
        
        fullNameLabel.text = person.fullName
        fullNameLabel.font = UIFont.systemFont(ofSize: 40)
        
        positionLabel.text = person.position
        positionLabel.font = UIFont.systemFont(ofSize: 30)
    }
}
