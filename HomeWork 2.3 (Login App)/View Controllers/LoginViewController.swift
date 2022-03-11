//
//  LoginViewController.swift
//  HomeWork 2.3 (Login App)
//
//  Created by Алексей Синяговский on 08.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let user = "User"
    private let password = "Password"
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.user = user
    }
        
    // MARK: - IBActions
    @IBAction func logInButtonPressed() {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                title: "Invalid login or password!",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "openGreetingVC", sender: nil)
    }
    
    @IBAction func showAuthorizationData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(password) 😉")
    }
    
    @IBAction func unwindSegueToMainViewController(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Keyboard

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonPressed()
        }
        return true
    }
}

