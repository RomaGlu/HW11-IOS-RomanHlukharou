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
        return loginLabel
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
        return loginButton
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

