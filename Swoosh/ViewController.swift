//
//  ViewController.swift
//  Swoosh
//
//  Created by Sebastian Crossa on 7/26/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Centers the swoosh logo and positions it where we want it to be
        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 10, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
        
        // Image will always cover the view
        bgImg.frame = view.frame
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
