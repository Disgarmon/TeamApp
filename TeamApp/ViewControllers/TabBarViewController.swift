//
//  TabBarViewController.swift
//  TeamApp
//
//  Created by Elenka Lebedev on 27.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        // дописать свои viewController
        
        let carcoons = Cartoon.getCartoonList()
        
        // передать в свои vc массив с мультиками cartoons урок 2.12 время 1:06
    }
}
