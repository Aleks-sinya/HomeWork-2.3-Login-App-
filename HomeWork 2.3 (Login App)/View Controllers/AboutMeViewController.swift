//
//  AboutMeViewController.swift
//  HomeWork 2.3 (Login App)
//
//  Created by Алексей Синяговский on 12.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Aleksei Siniagovskii"
        
        textView.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 16)
        textView.backgroundColor = self.view.backgroundColor
        textView.layer.cornerRadius = 12
        textView.isEditable = false
    }
}
