//
//  ViewController.swift
//  TinderUIProject
//
//  Created by 星みちる on 2019/07/26.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit
import Koloda

class ViewController: UIViewController {
  
    @IBOutlet weak var kolodaView: KolodaView!
    let men = ["haruma","hukuyama","juniti","kento","kubota","makken","nisijima","okada","ryo","ryouma","souta","suda","syo","syun","takenouti","takeru","tamaki","touri","tumabuki","yagura","yamada","kentarou"]
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        kolodaView.delegate = self
        kolodaView.dataSource = self
        
    }
    @IBAction func left(_ sender: UIButton) {
    kolodaView.swipe(.left)
    
    }
    
    @IBAction func right(_ sender: UIButton) {
    kolodaView.swipe(.right)
        
    }
    
    @IBAction func back(_ sender: UIButton) {
        kolodaView.revertAction()
    }
    
    
    
}

extension ViewController:KolodaViewDelegate,KolodaViewDataSource{
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        //画像を生成
        let image = UIImage(named: men[index])
        
        //ImageViewに生成した画像を設定
        let imageView = UIImageView(image: image)
        
        //ImageViewを返す
        return imageView
        
    }
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
            return men.count
    }
    
    //GitHUbのページを読み込んで制限があれば書き換えていく
    func koloda(_ koloda: KolodaView, allowedDirectionsForIndex index: Int) -> [SwipeResultDirection] {
        return [.left,.right,.up,.down]
    }

    
    
}
