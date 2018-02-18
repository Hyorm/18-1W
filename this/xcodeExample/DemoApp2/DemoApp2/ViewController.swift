//
//  ViewController.swift
//  DemoApp2
//
//  Created by HyoRim Kim on 17/02/2018.
//  Copyright © 2018 HyoRim Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UITableViewDelegate {

    var images : Array<String>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        images = ["pic1", "pic2","pic3", "pic4","pic5", "pic6","pic7", "pic8", "pic9"]
    }

    @objc func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let CellIdentifier = "reusedCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifier, for: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.layer.opacity = 0.5
        let imageName = images[indexPath.row]
        imageView.image = UIImage(named: imageName )
        
        return cell
    }

    @objc func collectionView(_ collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        let cell = collectionView.cellForItem(at: indexPath as IndexPath)
        let view = cell?.viewWithTag(1)
        view?.layer.opacity = 1.0
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

