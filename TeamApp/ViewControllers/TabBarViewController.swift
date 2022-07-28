//
//  TabBarViewController.swift
//  TeamApp
//
//  Created by Elenka on 27.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let cartoonListTVC = viewControllers?.first as? CartoonListTableViewController else { return }
        // дописать свои viewController
        
        let carcoons = Cartoon.getCartoonList()
        
        cartoonListTVC.cartoonList = carcoons
        // передать в свои vc массив с мультиками cartoons урок 2.12 время 1:06
    }
}
