//
//  ViewController.swift
//  OtAppTuto
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource {
    
    var pageViewController : UIPageViewController!
    var pageTitles : NSArray!
    var pageImages : NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            self.pageTitles = NSArray(objects: "T1" , "T2", "T3" , "T4", "T5")
            self.pageImages = NSArray(objects: "T01" , "T02" , "T03" , "T04" , "T05")
        
            self.pageViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageViewController") as! UIPageViewController
            
            self.pageViewController.dataSource = self
        
            let startVC = self.viewControllerAtIndex(index: 0) as ContentViewController
            let viewControllers = NSArray(object: startVC)
        
            self.pageViewController.setViewControllers(viewControllers as? [UIViewController] , direction: .forward, animated: true, completion: nil)
            self.pageViewController.view.frame = CGRect(x: 0, y: 0,width: self.view.frame.width, height: self.view.frame.height)
        
            self.addChildViewController(self.pageViewController)
            self.view.addSubview(self.pageViewController.view)
        
    }
    
    func viewControllerAtIndex (index : Int) -> ContentViewController {
        
        let vc : ContentViewController = self.storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as! ContentViewController
        
        vc.pageIndex = index
        vc.imageFile = self.pageImages[index] as! String
        vc.titleText = self.pageTitles[index] as! String
        
        print(">>> : " ,vc.titleText)
        
        return vc
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.pageTitles.count
    }
    
    @objc func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let vc = viewController as! ContentViewController
        var index = vc.pageIndex as Int
        
        if( index == 0 || index == NSNotFound) {
            return nil
        }
        
        index = index - 1
        
        return self.viewControllerAtIndex(index: index)
        
    }
    
    @objc func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let vc = viewController as! ContentViewController
        
        var index = vc.pageIndex as Int
        
        if( index == NSNotFound) {
            return nil
        }
        
        index = index + 1
        
        if (index == self.pageTitles.count) {
            return nil
        }
        
        return self.viewControllerAtIndex(index: index)
        
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}


