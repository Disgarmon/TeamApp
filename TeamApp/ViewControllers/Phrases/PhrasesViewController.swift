//
//  PhrasesViewController.swift
//  TeamApp
//
//  Created by Антон Полин  on 01.08.2022.
//

import UIKit

class PhrasesViewController: UIViewController {

    @IBOutlet var phraseLabel: UILabel!
    let cartoons = Cartoon.getCartoonList()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        phraseLabel.text = ""
        
     
    
        
    }
    
    @IBAction func startButtom() {
       
        let indexOfCartoon = arc4random_uniform(UInt32(cartoons.count))
        let phrases: [String] = cartoons[Int(indexOfCartoon)].phrases
        let indexOfPhrase = arc4random_uniform(UInt32(phrases.count))
        let phrase = phrases[Int(indexOfPhrase)]
        phraseLabel.text = phrase
    }
    
    

}
