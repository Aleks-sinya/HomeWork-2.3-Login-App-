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
    private let logIn = LoginModel.getLogin()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        
        guard let greetingVC = tabBarController.viewControllers?.first as?
                GreetingViewController else { return }
        
        greetingVC.userName = logIn.fullName
    }
    
    // MARK: - IBActions
    @IBAction func logInButtonPressed() {
        guard userNameTextField.text == logIn.login,
              passwordTextField.text == logIn.password
        else {
            showAlert(
                title: "Invalid login or password!",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "openGreetingVC", sender: logIn.login)
    }
    
    @IBAction func showAuthorizationData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(logIn.login) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(logIn.password) 😉")
    }
    
    @IBAction func unwindSegueToMainViewController(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(
        title: String,
        message: String,
        textField: UITextField? = nil
    )
    {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
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

