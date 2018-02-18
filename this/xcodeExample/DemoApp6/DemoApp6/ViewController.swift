//
//  ViewController.swift
//  DemoApp6
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRect(x:10, y:100, width:300, height:150)
        let label = UILabel(frame:rect)
        label.text = "Should this life sometime deceive you,\nDon't be sad or mad at it! On a gloomy day, submit:Trust - fair day will come, why grieve you? Heart lives in the future, so what if gloom pervade the present? All is fleeting, all will go; What is gone will then be pleasant."
        label.backgroundColor = UIColor.brown
        label.textColor = UIColor.purple
        label.textAlignment = NSTextAlignment.center
        
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

