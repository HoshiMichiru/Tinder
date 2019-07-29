//
//  CuteViewController.swift
//  TinderUIProject
//
//  Created by 星みちる on 2019/07/28.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit
import Koloda

class CuteViewController: UIViewController {

    @IBOutlet weak var kolodaView: KolodaView!
    let women = ["airi","an","arisu","eraiza","kannna","kyoko","mai","miduki","minami","ngomi","satomi","sayuri","suzu","yui","nozomi","mayu","keiko"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kolodaView.delegate = self
        kolodaView.dataSource = self
        
       
    }
    
    @IBAction func back(_ sender: UIButton) {
        kolodaView.revertAction()
    }
    
    
    @IBAction func left(_ sender: UIButton) {
        kolodaView.swipe(.left)
    }

    @IBAction func right(_ sender: UIButton){
        kolodaView.swipe(.right)
        
    }
    
    

   

}
extension CuteViewController:KolodaViewDelegate,KolodaViewDataSource{
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let image = UIImage(named: women[index])
        
        let imageview = UIImageView(image:image)
        
        return imageview
    }
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return women.count
        
    }
    
    
}
