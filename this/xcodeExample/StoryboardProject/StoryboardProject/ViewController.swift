//
//  ViewController.swift
//  StoryboardProject
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentImageNum = 1


    @IBOutlet var imageView: UIImageView!
    @IBOutlet var name: UILabel!
    @IBAction func nextImage(_ sender: AnyObject) {
        currentImageNum = currentImageNum + 1
        let picName = "pic\(currentImageNum)"
        imageView.image = UIImage(named: picName)
        name.text = picName
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

