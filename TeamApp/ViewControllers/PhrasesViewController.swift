//
//  PhrasesViewController.swift
//  TeamApp
//
//  Created by Антон Полин  on 01.08.2022.
//

import UIKit

class PhrasesViewController: UIViewController {

    @IBOutlet var phraseLabel: UILabel!
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phraseLabel.text = ""
        
       
            
        
        
    }
    
    @IBAction func startButtom() {
       // phraseLabel.text = Cartoon.phrases.randomElement()
    
    }
    
    

}
