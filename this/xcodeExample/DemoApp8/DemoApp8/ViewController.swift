//
//  ViewController.swift
//  DemoApp8
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRect(x:130, y:100, width:0, height:0)
        let uiSwitch = UISwitch(frame:rect)
        uiSwitch.setOn(true, animated: true)
        uiSwitch.addTarget(self, action: #selector(ViewController.switchChanged(_:)), for: UIControlEvents.valueChanged)
        self.view.addSubview(uiSwitch)
    }

    @objc func switchChanged(_ uiSwitch:UISwitch){
        var message = "Turn on the switch."
        if(!uiSwitch.isOn){
            message = "Turn off the switch."
        }
        let alert = UIAlertController(title:"Information", message:message, preferredStyle:UIAlertControllerStyle.alert)
        let action = UIAlertAction(title:"OK", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(action)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

