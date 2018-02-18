//
//  ViewController.swift
//  DemoApp4
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bt1 = UIButton(type: UIButtonType.roundedRect)
        let rect = CGRect(x:31, y:100, width:257, height:60)
        bt1.frame = rect
        
        let image = UIImage(named: "pic1")
        bt1.setBackgroundImage(image, for: UIControlState())
        bt1.setTitle("Tap Me", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name:"Arial", size:24)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(bt1)
    }

    @objc func buttonTap(_ button:UIButton){
        let alert = UIAlertController(title:"Information", message: "UIButtonEvent.", preferredStyle: UIAlertControllerStyle.alert)
        let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:nil)
        alert.addAction(OKAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

