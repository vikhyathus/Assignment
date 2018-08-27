//
//  ViewController.swift
//  FirstApp
//
//  Created by Vikhyath on 24/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textlabel: UILabel!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet var back: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enlarge(_ sender: Any) {
    
        let fontSize = CGFloat(slider.value)
        textlabel.font  = UIFont(name: textlabel.font.fontName, size: fontSize)
        textlabel.sizeToFit()
    }
    
    @IBAction func changeColor(_ sender: Any) {
        if back.backgroundColor == UIColor.red{
            back.backgroundColor = UIColor.green
        }
        else{
            back.backgroundColor = UIColor.red
        }
    }
    
}

