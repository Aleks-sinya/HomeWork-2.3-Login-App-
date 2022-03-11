//
//  GreetingViewController.swift
//  HomeWork 2.3 (Login App)
//
//  Created by Алексей Синяговский on 08.03.2022.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    var user = ""
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    // MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openGreetingVC" {
            let tabBarController = segue.destination as! UITabBarController
            let greetingVC = tabBarController.viewControllers?.first as! GreetingViewController
            greetingVC.user = user
        }
    }
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        greetingLabel.text = "Welcome, \(user)!"
    }
}
    
    // MARK: - Set background color
    extension UIView {
        func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
            let gradient = CAGradientLayer()
            gradient.frame = bounds
            gradient.colors = [topColor.cgColor, bottomColor.cgColor]
            gradient.locations = [0.0, 1.0]
            gradient.startPoint = CGPoint(x: 0, y: 0)
            gradient.endPoint = CGPoint(x: 0, y: 1)
            layer.insertSublayer(gradient, at: 0)
        }
    }