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
        getRadius()
        cartoonDetails.text = cartoon.description
    }
    
    private func getImages() {
        for (item, imageView) in zip(cartoon.images, imagesStackView) {
            imageView.image = UIImage(named: item)
        }
    }
    private func getRadius() {
        for imageView in imagesStackView{
            imageView.layer.cornerRadius = imageView.frame.height / 10
        }
    }
}



