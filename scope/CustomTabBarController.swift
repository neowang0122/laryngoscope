//
//  CustomTabBarController.swift
//  scope
//
//  Created by Neo Wang on 4/12/22.
//

import Foundation
import UIKit

class CustomTabBarController: UITabBarController
{
    @IBInspectable var initialIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = initialIndex
        
    }
}
