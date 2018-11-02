//
//  LoginViewController.swift
//  NavigationControllers
//
//  Created by Lucas Dahl on 11/1/18.
//  Copyright © 2018 Lucas Dahl. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Login in button function
    @IBAction func loginTapped(_ sender: Any) {
        
        navigateToMainInterface()
        
    }
    
    func navigateToMainInterface() {
        
        // Get access to the storyboard
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Get the navigation controller
        guard let mainNavigationVC = mainStoryboard.instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController else {
            return
        }
        
        // Pass the info to VC        
        if let mainVC = mainNavigationVC.topViewController as? ViewController {
            mainVC.userName = userNameField.text
            mainVC.password = passwordField.text
        }
        
        // Present VC
        present(mainNavigationVC, animated: true, completion: nil)
        
    }
    
}
