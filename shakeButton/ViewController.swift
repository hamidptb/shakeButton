//
//  ViewController.swift
//  shakeButton
//
//  Created by Hamid Reza Ansari on 3/21/19.
//  Copyright © 2019 Hamid Reza Ansari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnOut: UIButton!
    
    // testtttttt
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnAct(_ sender: Any) {
        
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: btnOut.center.x - 5, y: btnOut.center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: btnOut.center.x + 5, y: btnOut.center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        btnOut.layer.add(shake, forKey: "position")
        
    }
    
}

