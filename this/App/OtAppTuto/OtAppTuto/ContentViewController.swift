//
//  ContentViewController.swift
//  OtAppTuto
//
//  Created by HyoRim Kim on 18/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var viewTitle: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    var pageIndex : Int!
    var titleText : String!
    var imageFile : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.viewTitle.text = self.titleText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
