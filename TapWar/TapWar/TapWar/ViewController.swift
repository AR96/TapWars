//
//  ViewController.swift
//  TapWar
//
//  Created by mac3 on 1/17/18.
//  Copyright © 2018 mac3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var TopBtn: UIButton!
    @IBOutlet var BtmBtn: UIButton!
    
    @IBOutlet var BlueLbl: UILabel!
    @IBOutlet var RedLbl: UILabel!
    
    @IBOutlet var endScene: UIButton!
    var score = 0
    
    
    
    @IBOutlet var TopEndLbl: UILabel!
    @IBOutlet var BtmEndLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score = 0
        
        BlueLbl.text = "\(score)"
        RedLbl.text = "\(score)"
        
        BlueLbl.transform = CGAffineTransformMakeRotation(3.14)
        
        endScene.hidden = true
        TopEndLbl.hidden = true
        BtmEndLbl.hidden = true
        
        TopEndLbl.transform = CGAffineTransformMakeRotation(3.14)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func BlueBtnAction(sender: AnyObject) {
        
        score = score + 1
        
        BlueLbl.text = "\(score)"
        RedLbl.text = "\(score)"
        TestScore()
        
    }
    
    
    @IBAction func RedBtnAction(sender: AnyObject) {
        score = score - 1
        
        BlueLbl.text = "\(score)"
        RedLbl.text = "\(score)"
        TestScore()
        
    }
    
    func TestScore(){
    
        if score >= 10
        {
            endScene.hidden = false
            TopEndLbl.hidden = false
            BtmEndLbl.hidden = false
            
            TopEndLbl.text = "Winner"
            BtmEndLbl.text = "Loser"
        }
        else if score <= -10
        {
            endScene.hidden = false
            TopEndLbl.hidden = false
            BtmEndLbl.hidden = false
            
            BtmEndLbl.text = "Winner"
            TopEndLbl.text = "Loser"
        }
    }
    
    @IBAction func EndSceneAction(sender: AnyObject) {
    
        endScene.hidden = true
        TopEndLbl.hidden = true
        BtmEndLbl.hidden = true
        
        score = 0
        
        BlueLbl.text = "\(score)"
        RedLbl.text = "\(score)"
    
    }
    
    
    


}

