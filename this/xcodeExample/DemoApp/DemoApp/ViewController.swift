//
//  ViewController.swift
//  DemoApp
//
//  Created by HyoRim Kim on 08/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* ex01-image load
        let img = UIImage(named:"1513694246908.jpg")
        let imgView = UIImageView(image: img)
        self.view.addSubview(imgView)
        */
        
        /* ex02-image folder load
        let img = UIImage(named:"20171124_161104")
        let imgView = UIImageView(image: img)
        self.view.addSubview(imgView)
        */
        
        /* ex03-error
        
         NotificationCenter.default.addObserver(self, selector:Selector(("orientationChanged:")), name:NSNotification.Name.UIDeviceOrientationDidChange,object:nil)
        
         }

         func orientationChanged(notification:NSNotification){
            //Action take on Notification
            let device = UIDevice.current
            switch device.orientation{
            case .Portrait:
                    println("UIDeviceOrientation.Portrait")
        }*/
        
        /* ex04-draw Rect
         let rect1 = CGRect(x:30, y:50, width:200, height:200)
         let view1 = UIView(frame:rect1)
         view1.backgroundColor = UIColor.brown
         
         let rect2  = CGRect(x: 90, y:120, width:200, height:200)
         let view2 = UIView(frame:rect2)
         view2.backgroundColor = UIColor.purple
         
         self.view.addSubview(view1)
         self.view.addSubview(view2)
         */
        
        /* ex05-rect hierarchy
        let view1 = UIView(frame:CGRect(x: 20, y:80, width:200, height:200))
        view1.backgroundColor = UIColor.red
        self.view.addSubview(view1)
        
        let view2 = UIView(frame:CGRect(x: 0, y:0, width:200, height:200))
        view2.bounds = CGRect(x:-100, y:-100, width:200, height:200)//view2의 크기도 결정
        view2.backgroundColor = UIColor.yellow
        self.view.addSubview(view2)
        
        let viewSub = UIView(frame:CGRect(x:0, y:0, width:100, height:100))
        viewSub.backgroundColor = UIColor.blue
        view2.addSubview(viewSub)//view2의 x,y좌표의 대칭에서부터 시작
        */
        
        /* ex07-UIView Basic Operation

        let rect = CGRect(x: 30, y:50, width:200, height:200)
        let view = UIView(frame:rect)
        view.backgroundColor = UIColor.brown
        
        self.view.addSubview(view)
        
        let btAdd = UIButton(frame: CGRect(x: 30, y:350, width:80, height:30))
        btAdd.backgroundColor = UIColor.gray
        btAdd.setTitle("Add", for: UIControlState())
        btAdd.addTarget(self, action: #selector(ViewController.addView(_:)), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(btAdd)
        
        let btBack = UIButton(frame: CGRect(x: 120, y:350, width:80, height:30))
        btBack.backgroundColor = UIColor.gray
        btBack.setTitle("Switch", for: UIControlState())
        btBack.addTarget(self, action: #selector(ViewController.bringViewBack(_:)), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(btBack)
        
        let btRemove = UIButton(frame: CGRect(x: 210, y:350, width:80, height:30))
        btRemove.backgroundColor = UIColor.gray
        btRemove.setTitle("Remove", for: UIControlState())
        btRemove.addTarget(self, action: #selector(ViewController.removeView(_:)), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(btRemove)
    }
    
    @objc func addView(_ sender:UIButton!){
        let rect = CGRect(x: 60, y:90, width:200, height:200)
        let view = UIView(frame: rect)
        view.backgroundColor = UIColor.purple
        view.tag = 1;
        
        self.view.addSubview(view)
    }
    
    @objc func bringViewBack(_ sender:UIButton!){
        let view = self.view.viewWithTag(1)
        self.view.sendSubview(toBack:view!)
    }
    
    @objc func removeView(_ sender:UIButton!){
        let view = self.view.viewWithTag(1)
        view?.removeFromSuperview()
    */
    
    /* ex08-Adding Borders to UIImageView
        let image = UIImage(named:"1513694246908")
        let imageView = UIImageView(image: image)
        
        imageView.frame = CGRect(x: 24, y:80, width:272, height:410)
        imageView.layer.borderWidth = 10;
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        
        self.view .addSubview(imageView)
    */
        
    /* ex09-Adding Rounded Corners to UIImageView
        let image = UIImage(named:"1513694246908")
        let imageView = UIImageView(image: image)
        
        let rect = CGRect(x: 10, y:80, width:300, height:300)
        imageView.frame = rect
        imageView.layer.cornerRadius = 150
        imageView.layer.masksToBounds = true
        
        self.view .addSubview(imageView)
    */
        
    /* ex10-Adding Shadow to UIImageView
        let image = UIImage(named:"1513694246908")
        let imageView = UIImageView(image: image)
        
        let rect = CGRect(x: 36, y:80, width:248, height:164)//image size
        imageView.frame = rect
        
        imageView.layer.shadowColor = UIColor.black.cgColor//shadow
        imageView.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
        
        imageView.layer.shadowOpacity = 0.45
        imageView.layer.shadowRadius = 5.0
        
        self.view.addSubview(imageView)
    */
        
    /* ex11-UIVIEw Gradient Filling
        let rect = CGRect(x: 30, y:60, width:200, height:200)
        let gradientView = UIView(frame:rect)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.frame
        
        let fromColor = UIColor.yellow.cgColor
        let midColor = UIColor.red.cgColor
        let toColor = UIColor.purple.cgColor
        
        gradientLayer.colors = [fromColor, midColor, toColor]

        view.layer.addSublayer(gradientLayer)
        self.view.addSubview(gradientView)
     */
        
    /* ex12-UIVIEw Gradient Filling
        let image = UIImage(named:"color1")
        let patternColor = UIColor.init(patternImage: image!)
        self.view.backgroundColor = patternColor
    */
        
    /* ex13-Using CGAffinTransfrom to Rotate UIView
        let rect = CGRect(x: 50, y:150, width:200, height:50)
        let view = UIView(frame:rect)
        view.backgroundColor = UIColor.brown
        self.view.addSubview(view)
        
        var transform = view.transform
        transform = transform.rotated(by: 3.14/4)
        view.transform = transform
    */
     
    /* ex14-The Single Tap Recognizer
        let rect = CGRect(x: 32, y:80, width:256, height:256)
        let imageview = UIImageView(frame:rect)
        
        let image = UIImage(named:"color1")
        imageview.image = image
        
        imageview.isUserInteractionEnabled = true
        self.view.addSubview(imageview)
        let guesture = UITapGestureRecognizer(target:self, action: #selector(ViewController.singleTap))
        imageview.addGestureRecognizer(guesture)
    }

    @objc func singleTap(){
        let alertView = UIAlertController(title:"Infomation", message:"Single Tap", preferredStyle: UIAlertControllerStyle.alert)
        let OKAction = UIAlertAction(title:"OK", style: .default, handler: {_ in})
        alertView.addAction(OKAction)
        self.present(alertView, animated: true, completion: nil)
 
    */

    /* ex14-The Long Press Recognizer
        let rect = CGRect(x: 32, y:80, width:256, height:256)
        let imageView = UIImageView(frame: rect)
        
        let image = UIImage(named: "color1")
        imageView.image = image
        
        imageView.isUserInteractionEnabled = true
        self.view.addSubview(imageView)
        let guesture = UILongPressGestureRecognizer(target:self, action:#selector(ViewController.longPress(gues:)))
        imageView.addGestureRecognizer(guesture)
    }
    
    @objc func longPress(gues: UILongPressGestureRecognizer){
        if(gues.state == UIGestureRecognizerState.began){
            let alertView = UIAlertController(title:"Infomation", message:"Long Press", preferredStyle: UIAlertControllerStyle.alert)
            let OKAction  = UIAlertAction(title: "OK", style: .default, handler:{_ in})
            alertView.addAction(OKAction)
            self.present(alertView, animated: true, completion: nil)
        }
        
    */
     
    /* ex15-The Double Tap Recognizer
        let rect = CGRect(x: 32, y:80, width:256, height:256)
        let imageView = UIImageView(frame: rect)
        
        let image = UIImage(named: "color1")
        imageView.image = image
        
        imageView.isUserInteractionEnabled = true
        
        self.view.addSubview(imageView)
        
        let guesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.doubleTap))
        guesture.numberOfTapsRequired = 2
        guesture.numberOfTouchesRequired = 1
        imageView.addGestureRecognizer(guesture)
        
    }
    
    @objc func doubleTap(){
        let alertView = UIAlertController(title: "Information", message:"Double Tap", preferredStyle: UIAlertControllerStyle.alert)
        let OKAction = UIAlertAction(title: "OK", style:.default, handler:{_ in})

        alertView.addAction(OKAction)
        self.present(alertView, animated: true, completion: nil)
    */
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

