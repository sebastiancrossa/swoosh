//
//  ViewController.swift
//  Swoosh
//
//  Created by Sebastian Crossa on 7/26/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func unwindFromLeagueVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}