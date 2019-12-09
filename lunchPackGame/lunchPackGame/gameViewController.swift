//
//  gameViewController.swift
//  lunchPackGame
//
//  Created by 野崎絵未里 on 2019/12/04.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    var carbo: Int = 0
    var protein: Int = 0
    var veg: Int = 0
    var index: Int!
    var imageviewArray: [String] = ["onigiri.png", "tako.png","tomato.png", "karaage.png", "egg.png", "tamago.png", "asupara.png", "shake.png", "bro.png", "hijiki.png", "panpkin.png"]
    var imageView = UIImageView(frame: CGRect(x: 297, y: 339, width: 90, height: 90))
    
    @IBOutlet weak var setView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let touch: UITouch = touches.first!
        let location: CGPoint = touch.location(in: self.setView)
        let image: UIImage = UIImage(named: imageviewArray[index - 1])!
        imageView.image = image
        
        imageView.center = CGPoint(x: location.x, y: location.y)
        
        self.view.addSubview(imageView)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        let firstTouch: UITouch = touches.first!
        
        //移動した後のポイント
        let location = firstTouch.location(in: imageView)
        
        let PreviousLocation = firstTouch.previousLocation(in: self.imageView)
        
        //今いるい位置
        var frame: CGRect = self.imageView.frame
        
        //移動した距離を計算する。
        let deltaX:CGFloat = location.x - PreviousLocation.x
        let deltaY:CGFloat = location.y - PreviousLocation.y
        //originはCGPointだよ。　CGRectはsize,locationをもっている。
        frame.origin.x += deltaX
        frame.origin.y += deltaY
        
        self.imageView.frame = frame
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
    }
    
    @IBAction func onigiri() {
        carbo = carbo + 1
        index = 1
    }
    @IBAction func tako() {
        protein = protein + 2
        index = 2
    }
    @IBAction func tomato(_ sender: Any) {
        veg = veg + 1
        index = 3
    }
    @IBAction func chicken(_ sender: Any) {
        protein = protein + 4
        index = 4
    }
    @IBAction func egg(_ sender: Any) {
        protein = protein + 2
        index = 5
    }
    @IBAction func tamago(_ sender: Any) {
        protein = protein + 2
        index = 6
    }
    @IBAction func asupara(_ sender: Any) {
        veg = veg + 1
        protein = protein + 1
        index = 7
    }
    @IBAction func shake(_ sender: Any) {
        protein = protein + 2
        index = 8
    }
    @IBAction func bro(_ sender: Any) {
        veg = veg + 3
        index = 9
    }
    @IBAction func hijiki(_ sender: Any) {
        veg = veg + 1
        index = 10
    }
    @IBAction func panp(_ sender: Any) {
        veg = veg + 2
        index = 11
    }
}
