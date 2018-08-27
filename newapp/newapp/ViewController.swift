//
//  ViewController.swift
//  newapp
//
//  Created by Vikhyath on 17/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = UIColor.black.cgColor
        emailField.layer.cornerRadius = 20
        emailField.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sliderCount(sender: UISlider) {
        let sliderValue = lroundf(sender.value)
        label.text = String(sliderValue)
        
    }
}
    


