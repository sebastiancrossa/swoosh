//
//  SkillVC.swift
//  Swoosh
//
//  Created by Sebastian Crossa on 7/27/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var finishButton: UIButton!
    @IBOutlet weak var beginnerBtn: UIButton!
    @IBOutlet weak var ballerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(player.desiredLeage)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        selectedSkill(selectedSkillLevel: "beginner")
    }
    
    @IBAction func onBallerTapped(_ sender: Any) {
        selectedSkill(selectedSkillLevel: "baller")
    }
    
    func selectedSkill(selectedSkillLevel: String) {
        player.selectedSkillLevel = selectedSkillLevel
        finishButton.isEnabled = true
        
        if selectedSkillLevel == "beginner" {
            beginnerBtn.layer.borderWidth = 2.0
            beginnerBtn.layer.borderColor = UIColor.white.cgColor
            
            finishButton.layer.borderWidth = 2.0
            finishButton.layer.borderColor = UIColor.white.cgColor
            
            ballerBtn.layer.borderWidth = 0
        } else if selectedSkillLevel == "baller" {
            ballerBtn.layer.borderWidth = 2.0
            ballerBtn.layer.borderColor = UIColor.white.cgColor
            
            finishButton.layer.borderWidth = 2.0
            finishButton.layer.borderColor = UIColor.white.cgColor
            
            beginnerBtn.layer.borderWidth = 0
        }
        
    }
    
}
