//
//  ViewController.swift
//  HW11-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 19/06/2023.
//

import UIKit
import CoreGraphics
import SnapKit

class ViewController: UIViewController {

// MARK: - Outlets
    private lazy var loginLabel: UILabel = {
       let loginLabel = UILabel()
        loginLabel.text = "Login"
        loginLabel.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        loginLabel.textColor = .white
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        return loginLabel
    }()
    
    private lazy var leftLineLabel: UILabel = {
        let leftLineLabel = UILabel()
        leftLineLabel.backgroundColor = .lightGray
        leftLineLabel.translatesAutoresizingMaskIntoConstraints = false
        return leftLineLabel
    }()
    
    private lazy var rightLineLabel: UILabel = {
        let rightLineLabel = UILabel()
        rightLineLabel.backgroundColor = .lightGray
        rightLineLabel.translatesAutoresizingMaskIntoConstraints = false
        return rightLineLabel
    }()
    
    private lazy var anotherConnectLabel: UILabel = {
        let anotherConnectLabel = UILabel()
        anotherConnectLabel.text = "or connect with"
        anotherConnectLabel.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        anotherConnectLabel.textColor = .lightGray
        anotherConnectLabel.backgroundColor = .clear
        anotherConnectLabel.translatesAutoresizingMaskIntoConstraints = false
        return anotherConnectLabel
    }()
    
    private lazy var loginTextField: UITextField = {
       let login = UITextField()
        login.placeholder = "type your login here"
        login.textColor = .lightGray
        login.textAlignment = .left
        login.backgroundColor = .white
        login.translatesAutoresizingMaskIntoConstraints = false
        login.layer.cornerRadius = 20
        login.setLeftIcon(UIImage(named: "userIcon")!)
        login.setRightIcon(UIImage(named: "accordance")!)
        return login
    }()
    
    private lazy var passwordTextField: UITextField = {
       let passwordTextField = UITextField()
        passwordTextField.placeholder = "type your password here"
        passwordTextField.textAlignment = .left
        passwordTextField.textColor = .lightGray
        passwordTextField.layer.cornerRadius = 20
        passwordTextField.backgroundColor = .white
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.setLeftIcon(UIImage(named: "lock")!)
        return passwordTextField
    }()
    
    private lazy var loginButton: UIButton = {
       let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.layer.cornerRadius = 20
        loginButton.backgroundColor = .systemMint
        return loginButton
    }()
    
    private lazy var forgottenPassword: UIButton = {
       let forgottenPassword = UIButton()
        forgottenPassword.setTitle("Forgot your password?", for: .normal)
        forgottenPassword.setTitleColor(.darkGray, for: .normal)
        forgottenPassword.backgroundColor = .none
        forgottenPassword.translatesAutoresizingMaskIntoConstraints = false
        return forgottenPassword
    }()
    
    private lazy var appleButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Apple"
        config.image = UIImage(systemName: "apple.logo")
        config.imagePadding = 10
        config.baseBackgroundColor = .black
        config.cornerStyle = .capsule
        let appleButton = UIButton(configuration: config)
        return appleButton
    }()
    
    private lazy var facebookButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Facebook"
        config.image = UIImage(systemName: "f.square")
        config.cornerStyle = .capsule
        config.baseBackgroundColor = UIColor(named: "Color")
        let facebookButton = UIButton(configuration: config)
        return facebookButton
    }()
    
// MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }

// MARK: - Layout
    
    func setupView() {
        view.gradientOfView(withColours: UIColor.systemMint, UIColor.white)
    }
    
    func setupHierarchy() {
        view.addSubview(loginLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgottenPassword)
        view.addSubview(leftLineLabel)
        view.addSubview(rightLineLabel)
        view.addSubview(anotherConnectLabel)
        view.addSubview(appleButton)
        view.addSubview(facebookButton)
    }
    
    func setupLayout() {
        
        loginLabel.snp.makeConstraints { make in
            make.left.equalTo(view.snp.left).offset(160)
            make.right.equalTo(view.snp.right).inset(160)
            make.top.equalTo(view.snp.top).offset(100)
            make.bottom.equalTo(view.snp.bottom).inset(600)
        }
        
        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(10)
            make.left.equalTo(view.snp.left).offset(40)
            make.right.equalTo(view.snp.right).inset(40)
            make.height.equalTo(44)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(20)
            make.left.equalTo(view.snp.left).offset(40)
            make.right.equalTo(view.snp.right).inset(40)
            make.height.equalTo(44)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(50)
            make.left.equalTo(view.snp.left).offset(40)
            make.right.equalTo(view.snp.right).inset(40)
            make.height.equalTo(44)
        }
        
        forgottenPassword.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(20)
            make.left.equalTo(view.snp.left).offset(40)
            make.right.equalTo(view.snp.right).inset(40)
            make.height.equalTo(15)
        }
        
        leftLineLabel.snp.makeConstraints { make in
            make.top.equalTo(forgottenPassword.snp.bottom).offset(150)
            make.left.equalTo(view.snp.left).offset(40)
            make.right.equalTo(view.snp.right).inset(250)
            make.height.equalTo(1)
        }
        
        rightLineLabel.snp.makeConstraints { make in
            make.top.equalTo(forgottenPassword.snp.bottom).offset(150)
            make.left.equalTo(view.snp.left).offset(250)
            make.right.equalTo(view.snp.right).inset(40)
            make.height.equalTo(1)
        }
        
        anotherConnectLabel.snp.makeConstraints { make in
            make.top.equalTo(forgottenPassword.snp.bottom).offset(143)
            make.left.equalTo(view.snp.left).offset(145)
            make.right.equalTo(view.snp.right).inset(125)
            make.height.equalTo(13)
        }
        
        appleButton.snp.makeConstraints { make in
            make.top.equalTo(leftLineLabel.snp.bottom).offset(40)
            make.left.equalTo(view.snp.left).offset(30)
            make.right.equalTo(view.snp.right).inset(200)
            make.height.equalTo(40)
        }
        
        facebookButton.snp.makeConstraints { make in
            make.top.equalTo(rightLineLabel.snp.bottom).offset(40)
            make.left.equalTo(view.snp.left).offset(200)
            make.right.equalTo(view.snp.right).inset(30)
            make.height.equalTo(40)
        }
    }
    
// MARK: - Actions

}

extension UIView {
    func gradientOfView(withColours: UIColor...) {

        var cgColours = [CGColor]()

        for colour in withColours {
            cgColours.append(colour.cgColor)
        }
        
        let grad = CAGradientLayer()
        grad.frame = self.bounds
        grad.colors = cgColours
        self.layer.insertSublayer(grad, at: 0)
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 20, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 55, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}
