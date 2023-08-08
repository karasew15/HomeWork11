//
//  ViewController.swift
//  Домашнее задание №11
//
//  Created by Сергей Карасев on 29.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    
    @IBOutlet weak var firstBandView: UIView!
    
    @IBOutlet weak var orConnectWihtLabel: UILabel!
    
    @IBOutlet weak var secondBandView: UIView!
    
    @IBOutlet weak var nameLoginTextField: UITextField!
    
    @IBOutlet weak var facebookButton: UIButton!
    
    @IBOutlet weak var twitterButton: UIButton!
    
    @IBOutlet weak var forgotYourPasswordButton: UIButton!
    
    @IBOutlet weak var singUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // background
        
        let backgroundViewIcon =  UIImage(named: "screenIcon")
        let backgroundView = UIImageView(image: backgroundViewIcon)
        backgroundView.contentMode = .scaleAspectFill
        view.addSubview(backgroundView)
        view.sendSubviewToBack(backgroundView)
        
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
        
        let loginIconLeft = UIImage(named: "humanIcon")
        setLeftIcon(txtField: nameLoginTextField, andImage: loginIconLeft!)
        
        let loginIconRight = UIImage(named: "jackdawIcon")
        setRightIcon(txtField: nameLoginTextField, andImage: loginIconRight!)
        
        // textFieldPassword
        
        passwordTextField.textColor = .gray
        passwordTextField.textAlignment = .center
        passwordTextField.placeholder = "password"
        passwordTextField.textAlignment = .left
        passwordTextField.layer.cornerRadius = 20
        
        let passwordIcon = UIImage(named: "lockIcon")
        setLeftIcon(txtField: passwordTextField, andImage: passwordIcon!)
        
        // buttonLogin
        
        loginButton.backgroundColor = .blue
        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 10
        loginButton.setTitle("Login", for: .normal)
        
        // buttonFacebook
        
        facebookButton.backgroundColor = .blue
        facebookButton.clipsToBounds = true
        facebookButton.layer.cornerRadius = 10
        facebookButton.setTitle("Facebook", for: .normal)
        
        // buttonTwitter
        
        twitterButton.backgroundColor = .blue
        twitterButton.clipsToBounds = true
        twitterButton.layer.cornerRadius = 10
        twitterButton.setTitle("Twitter", for: .normal)
        
        firstBandView.backgroundColor = .white
        secondBandView.backgroundColor = .white
        
    }
    
    func setLeftIcon(txtField: UITextField, andImage img: UIImage) {
        
        let iconViewLeft = UIImageView(frame: CGRect(x: 10,
                                                     y: 5,
                                                     width: 20,
                                                     height: 20))
        iconViewLeft.image = img
        let iconContainerViewLeft: UIView = UIView(frame: CGRect(x: 20,
                                                                 y: 0,
                                                                 width: 30,
                                                                 height: 30))
        iconContainerViewLeft.addSubview(iconViewLeft)
        txtField.leftView = iconContainerViewLeft
        txtField.leftViewMode = .always
    }

    func setRightIcon(txtField: UITextField, andImage img: UIImage) {
        
        let iconViewRight = UIImageView(frame: CGRect(x: 0,
                                                      y: 5,
                                                      width: 20,
                                                      height: 20))
        iconViewRight.image = img
        let iconContainerViewRight: UIView = UIView(frame: CGRect(x: 20,
                                                                  y: 0,
                                                                  width: 30,
                                                                  height: 30))
        iconContainerViewRight.addSubview(iconViewRight)
        txtField.rightView = iconContainerViewRight
        txtField.rightViewMode = .always
    }
}






