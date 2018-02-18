//
//  ViewController.swift
//  DemoApp5
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRect(x:20, y: 100, width: 300, height:80)
        let label = UILabel(frame: rect)
        label.text = "Hello, Xcode and Swift"
        
        let font = UIFont(name: "Arial", size: 24)
        label.font = font
        
        label.shadowColor = UIColor.lightGray
        label.shadowOffset = CGSize(width:2, height:2)
        
        label.textAlignment = NSTextAlignment.right
        label.textColor = UIColor.purple
        label.backgroundColor = UIColor.yellow
        
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

