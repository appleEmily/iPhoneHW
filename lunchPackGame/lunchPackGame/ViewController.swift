//
//  ViewController.swift
//  lunchPackGame
//
//  Created by 野崎絵未里 on 2019/11/29.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        vc.modalPresentationStyle = .fullScreen
        //        self.present(vc, animated: true, completion: nil)
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "game" {
            let svc = segue.destination as? GameViewController
            //let vc = UIViewController()
            //vc.modalPresentationStyle = .fullScreen
            //self.present(vc, animated: true, completion: nil)
        }
    }
    
}
