//
//  ViewController.swift
//  HomeWork 2.3 (Login App)
//
//  Created by Алексей Синяговский on 08.03.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func logInButtonPressed() {
        if loginTextField.text != "User" {
            loginAndPasswordAlert()
        }
        if passwordTextField.text != "Password" {
            loginAndPasswordAlert()
        }
    }
    
    @IBAction func forgotLoginPressed() {
        let alert = UIAlertController(title: "Oops!", message: "Your name is User 😉", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordPressed() {
        let alert = UIAlertController(title: "Oops!", message: "Your password is Password 🤓", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func unwindSegueToMainViewController(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? GreetingViewController else { return }
        
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTextField.delegate = self
        passwordTextField.delegate = self
        passwordTextField.returnKeyType = UIReturnKeyType.done
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let transition = segue.destination as? GreetingViewController else { return }
        
        transition.login = loginTextField.text
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func loginAndPasswordAlert() {
        let alert = UIAlertController(title: "Invalid login or password!", message: "Please, enter correct login and password", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
        passwordTextField.text = ""
    }
}
extension ViewController: UITextViewDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        passwordTextField.becomeFirstResponder()
        
        return true
    }
}

