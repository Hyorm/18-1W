//
//  FirstSubViewViewController.swift
//  NaviationViewControllerproject
//
//  Created by HyoRim Kim on 16/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class FirstSubViewViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.title = "First Page"
        self.view.backgroundColor = UIColor.brown
        
        //self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style:UIBarButtonItemStyle.plain, target:self, action: #selector(FirstSubViewViewController.nextPage))
        
        let leftBar = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.refresh, target: self, action: #selector(FirstSubViewViewController.refresh))
        self.navigationItem.leftBarButtonItem = leftBar
        
        let rightBar = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.save, target: self, action: #selector(FirstSubViewViewController.save))
        self.navigationItem.rightBarButtonItem = rightBar
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width:180, height:30))
        label.text = "Happy Day"
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.white
        self.navigationItem.titleView = label
    }
    
    @objc func refresh(){
        let alert = UIAlertController(title: "Information", message: "Refresh my feeling", preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @objc func save(){
        print("Saving...")
    }
    
    @objc func nextPage(){
        let viewController = SecondSubViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.prompt = "Loading..."
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = UIColor.orange
        //self.navigationController?.setToolbarHidden(false, animated: false)
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


