//
//  PageControlViewController.swift
//  PageControlViewProject
//
//  Created by HyoRim Kim on 15/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class PageControlViewController: UIViewController, UIScrollViewDelegate {
    
    var scrollView = UIScrollView()
    var pageControl = UIPageControl()
    var isPageControlUsed = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var screenFrame = UIScreen.main.bounds
        let screenWidth = screenFrame.size.width
        let screenHeight = screenFrame.size.height
        
        scrollView.frame = screenFrame
        scrollView.isPagingEnabled = true
        scrollView.contentSize = CGSize(width: screenWidth * 2, height: screenHeight)
        scrollView.backgroundColor = UIColor.black
        scrollView.delegate = self
        
        let pcHeight:CGFloat = 50.0
        let pcRect = CGRect(x:0, y:screenHeight-pcHeight, width:screenWidth, height:pcHeight)
        
        pageControl.frame = pcRect
        pageControl.numberOfPages = 2
        pageControl.currentPage = 0
        pageControl.backgroundColor = UIColor.gray
        pageControl.addTarget(self, action: #selector(PageControlViewController.pageControlDidChanged(sender:)), for: UIControlEvents.valueChanged)
        
        let firstController = FirstSubViewController()
        screenFrame.origin.x = 0
        firstController.view.frame = screenFrame
        
        let secondController = SecondSubViewController()
        screenFrame.origin.x = screenFrame.size.width
        secondController.view.frame = screenFrame
        
        scrollView.addSubview(firstController.view)
        scrollView.addSubview(secondController.view)
        
        self.view.addSubview(scrollView)
        self.view.addSubview(pageControl)
    }
    
    @objc func pageControlDidChanged(sender:AnyObject){
        let crtPage = (CGFloat)(pageControl.currentPage)
        var frame = scrollView.frame
        frame.origin.x = frame.size.width * crtPage
        frame.origin.y = 0
        
        scrollView.scrollRectToVisible(frame, animated: true)
        isPageControlUsed = true
    }
    
    @objc func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if(!isPageControlUsed){
            let pageWidth = scrollView.frame.size.width
            let page = floor((scrollView.contentOffset.x - pageWidth/2)/pageWidth)+1
            pageControl.currentPage = Int(page)
        }
    }
    
    @objc func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        isPageControlUsed = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
