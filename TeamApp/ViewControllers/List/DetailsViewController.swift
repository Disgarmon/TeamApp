//
//  ViewController.swift
//  TeamApp
//
//  Created by Daniil Lebedev on 26.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var imagesStackView: UIStackView!
    @IBOutlet var firstImage: UIImageView!
    @IBOutlet var cartoonDetails: UILabel!
    
    var cartoon: Cartoon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartoonDetails.text = cartoon.description
        firstImage.image = UIImage(systemName: cartoon.title)
    }
    
    func getImages() {
        cartoon.images[0].forEach { image in
            print("test")
        }
    }
}

