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
    
    @IBOutlet weak var setView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let touch: UITouch = touches.first!
        let location: CGPoint = touch.location(in: self.setView)
        //何番めがセットされたか
        //imageViewArrayのうち、最後に触られているものを動かす。kってやってあげれば良い。
        //let image: UIImage = UIImage(named: imageviewArray[index - 1])!
        //imageView.image = image
        
        
        //self.setView.addSubview(imageView)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        if let touch = touches.first {
            // タッチしたビューをviewプロパティで取得する
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
        
        
        //        let firstTouch: UITouch = touches.first!
        //        //移動した後のポイント
        //        let location = firstTouch.location(in: okazuArray.last!)
        //        let PreviousLocation = firstTouch.previousLocation(in: self.okazuArray.last!)
        //
        //        //今いるい位置
        //        var frame: CGRect = self.okazuArray.last!.frame
        //
        //        //移動した距離を計算する。
        //        let deltaX:CGFloat = location.x - PreviousLocation.x
        //        let deltaY:CGFloat = location.y - PreviousLocation.y
        //        //originはCGPointだよ。　CGRectはsize,locationをもっている。
        //        frame.origin.x += deltaX
        //        frame.origin.y += deltaY
        
        
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
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
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
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func egg(_ sender: Any) {
        protein = protein + 2
        index = 5
        var imageView = UIImageView()
        imageView.image = UIImage(named: "egg.png")
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
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
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func shake(_ sender: Any) {
        protein = protein + 2
        index = 8
        var imageView = UIImageView()
        imageView.image = UIImage(named: "ahake.png")
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
        imageView.frame = rec
        self.setView.addSubview(imageView)
        okazuArray.append(imageView)
    }
    @IBAction func bro(_ sender: Any) {
        veg = veg + 3
        index = 9
        var imageView = UIImageView()
        imageView.image = UIImage(named: "bro.png")
        let rec = CGRect(x: 297, y: 399, width:80 , height: 80)
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
