//
//  ViewController.swift
//  TeamApp
//
//  Created by Daniil Lebedev on 26.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var imagesStackView: [UIImageView]!
    @IBOutlet var cartoonDetails: UILabel!
    
    var cartoon: Cartoon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getImages()
        cartoonDetails.text = cartoon.description
    }
    
    func getImages() {
        for (item, imageView) in zip(cartoon.images, imagesStackView) {
            imageView.image = UIImage(named: item)
        }
    }
}
