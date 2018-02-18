//
//  ViewController.swift
//  DemoApp3
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bt1 = UIButton(type: UIButtonType.infoDark)
        bt1.frame = CGRect(x:130, y:80, width:40, height:40)
        
        let bt2 = UIButton(type: UIButtonType.roundedRect)
        bt2.frame = CGRect(x:80, y:180, width:150, height:44)
        bt2.backgroundColor = UIColor.purple
        bt2.tintColor = UIColor.yellow
        bt2.setTitle("Tap Me", for: UIControlState())
        bt2.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        
        let bt3 = UIButton(type: UIButtonType.roundedRect)
        bt3.backgroundColor = UIColor.brown
        bt3.tintColor = UIColor.white
        bt3.setTitle("Tap Me", for: UIControlState())
        bt3.frame = CGRect(x:80, y:280, width:150, height:44)
        bt3.layer.masksToBounds = true
        bt3.layer.cornerRadius = 10
        bt3.layer.borderWidth = 4
        bt3.layer.borderColor = UIColor.lightGray.cgColor
        
        self.view.addSubview(bt1)
        self.view.addSubview(bt2)
        self.view.addSubview(bt3)
    }
    
    @objc func buttonTap(_ button:UIButton){
        let alert = UIAlertController(title: "Information", message: "UIButtonEvent.", preferredStyle: UIAlertControllerStyle.alert)
        let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(OKAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

