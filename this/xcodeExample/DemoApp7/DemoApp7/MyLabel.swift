//
//  MyLable.swift
//  DemoApp7
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class MyLabel: UILabel {

    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context!.setTextDrawingMode(CGTextDrawingMode.stroke)
        
        context?.setLineWidth(2)
        context?.setLineJoin(CGLineJoin.round)
        self.textColor = UIColor.white
        super.drawText(in: rect)
        
        context?.setTextDrawingMode(CGTextDrawingMode.fill)
        let textColor = UIColor.black
        self.textColor = textColor
        super.drawText(in: rect)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
