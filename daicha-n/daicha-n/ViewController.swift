//
//  ViewController.swift
//  daicha-n
//
//  Created by 野崎絵未里 on 2019/12/17.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textfield:  UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func text(_ sender: Any) {
        if textfield.text == "な" {
            textfield.textColor = UIColor.red
        } else {
            
        }
    }
    


}

