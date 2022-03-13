//
//  AboutMeViewController.swift
//  HomeWork 2.3 (Login App)
//
//  Created by Алексей Синяговский on 12.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    var user: UserInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.person.fullName
        
        textView.text = user.person.description
        textView.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 16)
        textView.backgroundColor = self.view.backgroundColor
        textView.layer.cornerRadius = 12
        textView.isEditable = false
    }
}
