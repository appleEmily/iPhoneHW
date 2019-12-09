//
//  ViewController.swift
//  count
//
//  Created by 野崎絵未里 on 2019/11/29.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
    }
    @IBAction func minus() {
        number = number - 1
        label.text = String(number)
    }
    @IBAction func multiple() {
        number = number * 2
        label.text = String(number)
    }
    @IBAction func devide() {
        number = number / 2
        label.text = String(number)
    }
    @IBAction func clear() {
    number = 0
    label.text = String(number)
    }


}

