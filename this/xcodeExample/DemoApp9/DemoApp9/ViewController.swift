//
//  ViewController.swift
//  DemoApp9
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRect(x:80, y:100, width:100, height:30)
        let label = UILabel(frame:rect)
        label.text = "0"
        label.tag = 1
        self.view.addSubview(label)
        
        let rect2 = CGRect(x:130, y:100, width:0, height:0)
        let stepper = UIStepper(frame: rect2)
        stepper.sizeToFit()
        stepper.value = 0
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.stepValue = 1
        
        stepper.addTarget(self, action: #selector(ViewController.valueChanged(stepper:)), for:UIControlEvents.valueChanged)
        self.view.addSubview(stepper)
        
    }

    @objc func valueChanged(stepper:UIStepper){
        let value = stepper.value
        let label = self.view.viewWithTag(1) as! UILabel
        label.text = "\(value)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

