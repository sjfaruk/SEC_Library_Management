//
//  ViewController.swift
//  ScrollTheImage
//
//  Created by MOSHIOUR on 2/3/17.
//  Copyright © 2017 devslopes. All rights reserved.
//

import UIKit

class PhotoGalleryVC: UIViewController {

    @IBOutlet weak var myScrollView: UIScrollView!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    var scrollImage = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        for x in 0...7{
            let image = UIImage(named: "pic\(x).jpg")
            let imageView = UIImageView(image : image)
            scrollImage.append(imageView)
            
            
            imageView.contentMode = .scaleAspectFit
            let xposition = self.view.frame.width * CGFloat(x)
            imageView.frame = CGRect(x:xposition, y:0-10, width:375 , height:254)
            
            myScrollView.contentSize.width = myScrollView.frame.width * CGFloat(x+1)
            myScrollView.addSubview(imageView)
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

