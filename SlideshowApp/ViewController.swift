//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 西谷祐樹 on 2018/08/10.
//  Copyright © 2018年 西谷祐樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIButton!
    @IBAction func zoomUp(_ sender: Any) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let viewController: zoomup = segue.destination as! zoomup
        viewController.image = imageView.imageView?.image
    }
    
    @IBOutlet weak var Playbutton: UIButton!
    var timer: Timer!
    @IBAction func AutoPlay(_ sender: Any) {
        if timer == nil{
        Playbutton.setTitle("停止", for: .normal)
            onNext.isEnabled = false
            onPrev.isEnabled = false
        //タイマーを設定
        timer = Timer.scheduledTimer(timeInterval: 2.0, target :self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        } else {
            Playbutton.setTitle("再生", for: .normal)
            timer.invalidate()
            timer = nil
            onNext.isEnabled = true
            onPrev.isEnabled = true
        }
        
    }
    
    
    @objc func updateTimer(_ timer: Timer){
        dispImageNo -= 1
        displayImage()
    }
    
    @IBOutlet weak var onPrev: UIButton!
    
    @IBAction func onPrev(_ sender: Any) {
        //表示している画像の番号を1減らす
        dispImageNo -= 1
        
        //表示している画像の番号を基に画像を表示する
        displayImage()
    }
    
    @IBOutlet weak var onNext: UIButton!
    
    @IBAction func onNext(_ sender: Any) {
        //表示している画像の番号を1増やす
        dispImageNo += 1
        
        //表示している画像の番号を基に画像を表示する
        displayImage()
    }
    
    ///表示している画像の番号
    var dispImageNo = 0
    
    ///表示している画像の番号を基に画像を表示する
    func displayImage(){
        
        //画像の名前の配列
        let imageNameArray = [
        "DB9.jpg",
        "One-77.jpg",
        "Vulcan.jpg",
        ]
        
        //画像の番号が正常な範囲を指しているかチェック
        
        //範囲より下を指している場合、最後の画像を表示
        if dispImageNo < 0{
            dispImageNo = 2
        }
        
        //範囲より上を指している場合、最初の画像を表示
        if dispImageNo > 2{
            dispImageNo = 0
        }
        
        //表示している画像の番号から名前を取り出し
        let name = imageNameArray[dispImageNo]
        
        //画像を読み込み
        let image = UIImage(named: name)
        
        //image Viewに読み込んだ画像をセット
        imageView.setImage(image, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "DB9")
        imageView.setImage(image, for: .normal)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func changepic(_ sender: Any) {
        
    }
    

}

