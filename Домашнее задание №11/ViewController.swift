//
//  ViewController.swift
//  Домашнее задание №11
//
//  Created by Сергей Карасев on 29.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var nameLoginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var forgotYourPasswordLabel: UILabel!
    
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    
    @IBOutlet weak var firstBandView: UIView!
    
    @IBOutlet weak var orConnectWihtLabel: UILabel!
    
    @IBOutlet weak var secondBandView: UIView!
    
    @IBOutlet weak var facebookTextField: UITextField!
    
    @IBOutlet weak var twitterTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // background
        
        let backgroundViewIcon =  UIImage(named: "ekran")
        let backgroundView = UIImageView(image: backgroundViewIcon)
        backgroundView.contentMode = .scaleAspectFill
        view.addSubview(backgroundView)
        view.sendSubviewToBack(backgroundView)
        
        func setLeftIcon(txtField: UITextField, andImage img: UIImage) {
            
            let iconViewLeft = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
            iconViewLeft.image = img
            let iconContainerViewLeft: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
            iconContainerViewLeft.addSubview(iconViewLeft)
            txtField.leftView = iconContainerViewLeft
            txtField.leftViewMode = .always
        }
        
        func setRightIcon(txtField: UITextField, andImage img: UIImage) {

            let iconViewRight = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
            iconViewRight.image = img
            let iconContainerViewRight: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
            iconContainerViewRight.addSubview(iconViewRight)
            txtField.rightView = iconContainerViewRight
            txtField.rightViewMode = .always
        }
        
        // labelLogin
        
        loginLabel.text = "Login"
        loginLabel.textColor = .white
        loginLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        loginLabel.textAlignment = .center
        loginLabel.numberOfLines = 5
        
        // textFieldLogin
        
        nameLoginTextField.textColor = .gray
        nameLoginTextField.textAlignment = .center
        nameLoginTextField.placeholder = "karasew15"
        nameLoginTextField.textAlignment = .left
        
        let loginIconLeft = UIImage(named: "chelovek")
        setLeftIcon(txtField: nameLoginTextField, andImage: loginIconLeft!)
        
        let loginIconRight = UIImage(named: "galochka")
        setRightIcon(txtField: nameLoginTextField, andImage: loginIconRight!)
        
        // textFieldPassword
        
        passwordTextField.textColor = .gray
        passwordTextField.textAlignment = .center
        passwordTextField.placeholder = "password"
        passwordTextField.textAlignment = .left
        passwordTextField.layer.cornerRadius = 20
                
        let passwordIcon = UIImage(named: "zamok")
        setLeftIcon(txtField: passwordTextField, andImage: passwordIcon!)
        
        // buttonLogin
        
        loginButton.backgroundColor = .white
        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 10
        loginButton.setTitle("Login", for: .normal)
        
        // labelText
        
        forgotYourPasswordLabel.text = "Forgot your password?"
        forgotYourPasswordLabel.textColor = .white
        forgotYourPasswordLabel.font = .systemFont(ofSize: 10)
        forgotYourPasswordLabel.textAlignment = .center
        forgotYourPasswordLabel.numberOfLines = 5
        
        // textFieldFacebook
        
        facebookTextField.backgroundColor = .white
        facebookTextField.textColor = .blue
        facebookTextField.textAlignment = .center
        facebookTextField.placeholder = "Facebook"
        facebookTextField.textAlignment = .left
        
        let facebookIcon = UIImage(named: "facebook")
        setLeftIcon(txtField: facebookTextField, andImage: facebookIcon!)
        
        // textFieldTwitter
        
        twitterTextField.backgroundColor = .white
        twitterTextField.textColor = .blue
        twitterTextField.textAlignment = .center
        twitterTextField.placeholder = "Twitter"
        twitterTextField.textAlignment = .left
        
        let twitterIcon = UIImage(named: "twitter")
        setLeftIcon(txtField: twitterTextField, andImage: twitterIcon!)
        
        // labelText
        
        dontHaveAccountLabel.text = "Dont have account? Sing up"
        dontHaveAccountLabel.textColor = .white
        dontHaveAccountLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        dontHaveAccountLabel.textAlignment = .center
        dontHaveAccountLabel.numberOfLines = 1
        dontHaveAccountLabel.font = .systemFont(ofSize: 10)
        
        firstBandView.backgroundColor = .white
        secondBandView.backgroundColor = .white
        
        // labelText
        
        orConnectWihtLabel.text = "or connect with"
        orConnectWihtLabel.textColor = .white
        orConnectWihtLabel.font = .systemFont(ofSize: 10)
        orConnectWihtLabel.textAlignment = .center
        orConnectWihtLabel.numberOfLines = 5
        
    }
}




