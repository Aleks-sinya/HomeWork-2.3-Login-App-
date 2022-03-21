//
//  ImageViewController.swift
//  HomeWork 2.3 (Login App)
//
//  Created by Алексей Синяговский on 21.03.2022.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    
    var user: UserInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImageView.image = UIImage(named: user.person.firstImage)
        secondImageView.image = UIImage(named: user.person.secondImage)
        thirdImageView.image = UIImage(named: user.person.thirdImage)
        
    }

}
