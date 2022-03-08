//
//  GreetingViewController.swift
//  HomeWork 2.3 (Login App)
//
//  Created by Алексей Синяговский on 08.03.2022.
//

import UIKit

class GreetingViewController: UIViewController {
    
    var login: String?

    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else { return }
        
        greetingLabel.text = "Hello, \(login)! \n 👋"
    }
    
    @IBAction func logOutButtonPressed() {
    }
}
