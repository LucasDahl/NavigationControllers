//
//  ViewController.swift
//  NavigationControllers
//
//  Created by Lucas Dahl on 11/1/18.
//  Copyright © 2018 Lucas Dahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var userNameLabel: UILabel!
    
    // Properties
    var userName:String?
    var password:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the userName label to the user name
        userNameLabel.text = userName
        
        // Prints the user name and password
        print(userName ?? "No name entered")
        print(password ?? "No password")
        
    }

    
    
}

