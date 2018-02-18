//
//  ViewController.swift
//  DemoApp7
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = MyLabel()
        label.frame = CGRect(x:120, y: 180, width:240, height:120)
        label.text = "Enter >"
        label.font = UIFont(name:"Georgia", size:56)
        
        self.view.addSubview(label)
        self.view.backgroundColor = UIColor.purple
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

