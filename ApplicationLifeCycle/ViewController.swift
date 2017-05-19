//
//  ViewController.swift
//  ApplicationLifeCycle
//
//  Created by raja A on 4/6/17.
//  Copyright © 2017 raja A. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.lightGray
        let imageName = "Login_BG.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 50, y: 100, width: 300, height: 500)
        view.addSubview(imageView)
        let textField = UITextField(frame: CGRect(x: 50, y: 50, width: 300, height: 40))
        textField.borderStyle = UITextBorderStyle.bezel
        textField.placeholder = "Enter text here"
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.backgroundColor = UIColor.darkGray
        textField.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        textField.delegate = self
        self.view.addSubview(textField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

