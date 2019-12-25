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
    //var imageviewArray: [String] = ["onigiri.png", "tako.png","tomato.png", "karaage.png", "egg.png", "tamago.png", "asupara.png", "shake.png", "bro.png", "hijiki.png", "panpkin.png"]
    var okazuArray: [UIImageView] = []
    var gapX:CGFloat = 0.0
    var gapY:CGFloat = 0.0
    
    @IBOutlet weak var setView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let touch: UITouch = touches.first!
        let location: CGPoint = touch.location(in: self.setView)
        if let touch = touches.first {
            if let touchedView = touch.view {
                let location = touch.location(in: view)
                let PreviousLocation = touch.previousLocation(in: self.okazuArray.last!)
                var frame: CGRect = self.okazuArray.last!.frame
                //移動した距離を計算する。
                let deltaX:CGFloat = location.x - PreviousLocation.x
                let deltaY:CGFloat = location.y - PreviousLocation.y
                //originはCGPointだよ。　CGRectはsize,locationをもっている。
                frame.origin.x += deltaX
                frame.origin.y += deltaY
                self.okazuArray.last!.frame = frame
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        if let touch = touches.first {
            // タッチしたビューをviewプロパティで取得する
            if okazuArray.count > 0 {
                
                if let touchedView = touch.view {
                    let location = touch.location(in: okazuArray.last!)
                    let PreviousLocation = touch.previousLocation(in: self.okazuArray.last!)
                    var frame: CGRect = self.okazuArray.last!.frame
                    //移動した距離を計算する。
                    
                    let deltaX:CGFloat = location.x - PreviousLocation.x
                    let deltaY:CGFloat = location.y - PreviousLocation.y
                    //originはCGPointだよ。　CGRectはsize,locationをもっている。
                    frame.origin.x += deltaX
                    frame.origin.y += deltaY
                    self.okazuArray.last!.frame = frame
                }
            }
        }
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
    }
    //お具材一つ一つの中でimageViewを生成する。それをずっと有効にするために、imageViewArrayに入れる。
    @IBAction func onigiri() {
        carbo = carbo + 1
        index = 1
        var imageView = UIImageView()
        imageView.image = UIImage(named: "onigiri.png")
        let rec = CGRect(x: 297, y: 399, width:90 , height: 90)
        imageView.frame = rec
        //画面上におにぎりを出す。
        self.setView.addSubview(imageView)
        //okazuarrayに追加する。
        okazuArray.append(imageView)
    }
    @IBAction func tako() {
        protein = protein + 2
        index = 2
        var imageView = UIImageView()
        imageView.image = UIImage(named: "tako.png")
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func tomato(_ sender: Any) {
        veg = veg + 1
        index = 3
        var imageView = UIImageView()
        imageView.image = UIImage(named: "tomato.png")
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func chicken(_ sender: Any) {
        protein = protein + 4
        index = 4
        var imageView = UIImageView()
        imageView.image = UIImage(named: "karaage.png")
        let rec = CGRect(x: 297, y: 399, width:100 , height: 100)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func egg(_ sender: Any) {
        protein = protein + 2
        index = 5
        var imageView = UIImageView()
        imageView.image = UIImage(named: "egg.png")
        let rec = CGRect(x: 297, y: 399, width:95 , height: 95)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func tamago(_ sender: Any) {
        protein = protein + 2
        index = 6
        var imageView = UIImageView()
        imageView.image = UIImage(named: "tamago.png")
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func asupara(_ sender: Any) {
        veg = veg + 1
        protein = protein + 1
        index = 7
        var imageView = UIImageView()
        imageView.image = UIImage(named: "asupara.png")
        let rec = CGRect(x: 297, y: 399, width:90 , height: 90)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func shake(_ sender: Any) {
        protein = protein + 2
        index = 8
        var imageView = UIImageView()
        imageView.image = UIImage(named: "ahake.png")
        let rec = CGRect(x: 297, y: 399, width:110 , height: 110)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func bro(_ sender: Any) {
        veg = veg + 3
        index = 9
        var imageView = UIImageView()
        imageView.image = UIImage(named: "bro.png")
        let rec = CGRect(x: 297, y: 399, width:90 , height: 90)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func hijiki(_ sender: Any) {
        veg = veg + 1
        index = 10
        var imageView = UIImageView()
        imageView.image = UIImage(named: "hijiki.png")
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func panp(_ sender: Any) {
        veg = veg + 2
        index = 11
        var imageView = UIImageView()
        imageView.image = UIImage(named: "panpkin.png")
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
}
