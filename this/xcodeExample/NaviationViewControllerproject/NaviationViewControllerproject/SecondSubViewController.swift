//
//  SecondSubViewController.swift
//  NaviationViewControllerproject
//
//  Created by HyoRim Kim on 16/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

var pageNum = 1

class SecondSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //self.title = "Second Page"
        //self.view.backgroundColor = UIColor.purple
        
        /* Hide Bar
        let btHideNavBar = UIButton(frame:CGRect(x:40, y:200, width:240, height:30))
        btHideNavBar.setTitle("Hide navigation bar", for: UIControlState())
        btHideNavBar.backgroundColor = UIColor.orange
        btHideNavBar.addTarget(self, action: #selector(SecondSubViewController.hideNavigationBar), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btHideNavBar)
        
        let btHideToolBar = UIButton(frame:CGRect(x:40, y:260, width:240, height:30))
        btHideToolBar.setTitle("Hide tool bar", for: UIControlState())
        btHideToolBar.backgroundColor = UIColor.orange
        btHideToolBar.addTarget(self, action: #selector(SecondSubViewController.hideToolBar), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btHideToolBar)
        */
    
        self.title = "Page\(pageNum)"
        self.view.backgroundColor = UIColor.purple
        //
        
        let push = UIButton(frame:CGRect(x:40, y:120, width:240, height:30))
        push.setTitle("Push Page", for: UIControlState())
        push.backgroundColor = UIColor.orange
        push.addTarget(self, action: #selector(SecondSubViewController.pushPage), for: UIControlEvents.touchUpInside)
        self.view.addSubview(push)
        
        let pop = UIButton(frame: CGRect(x:40, y:180, width:240, height:40))
        pop.setTitle("Pop Page", for: UIControlState())
        pop.backgroundColor = UIColor.orange
        pop.addTarget(self, action: #selector(SecondSubViewController.popPage), for: UIControlEvents.touchUpInside)
        self.view.addSubview(pop)
        
        let index = UIButton(frame: CGRect(x:40, y:280, width:240, height:40))
        index.setTitle("Goto Index Page", for: UIControlState())
        index.backgroundColor = UIColor.orange
        index.addTarget(self, action: #selector(SecondSubViewController.gotoIndexPage), for: UIControlEvents.touchUpInside)
        self.view.addSubview(index)

        let root = UIButton(frame: CGRect(x:40, y:340, width:240, height:40))
        root.setTitle("Goto Root Page", for: UIControlState())
        root.backgroundColor = UIColor.orange
        root.addTarget(self, action: #selector(SecondSubViewController.gotoRootPage), for: UIControlEvents.touchUpInside)
        self.view.addSubview(root)

    
    }
    
    @objc func pushPage(){
        let viewController = SecondSubViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
        pageNum = pageNum + 1
    }

    @objc func popPage(){
        self.navigationController?.popViewController(animated: true)
        pageNum = pageNum - 1
    }
    
    @objc func gotoIndexPage(){
        let viewController = self.navigationController?.viewControllers[1]
        self.navigationController?.popToViewController(viewController!, animated: true)
    }

    @objc func gotoRootPage(){
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func hideNavigationBar(){
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @objc func hideToolBar(){
        self.navigationController?.setToolbarHidden(true, animated: true)
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
