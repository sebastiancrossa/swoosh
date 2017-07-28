//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Sebastian Crossa on 7/27/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    // Declaring a variable from Player
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet weak var mensBtn: UIButton!
    @IBOutlet weak var womensBtn: UIButton!
    @IBOutlet weak var coedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initializing the struct
        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
        
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // Logic behind selection of league
    func selectLeague(leagueType: String) {
        player.desiredLeage = leagueType
        nextBtn.isEnabled = true
        
        if leagueType == "mens" {
            mensBtn.layer.borderWidth = 2.0
            mensBtn.layer.borderColor = UIColor.white.cgColor
            
            nextBtn.layer.borderWidth = 2.0
            nextBtn.layer.borderColor = UIColor.white.cgColor
            
            womensBtn.layer.borderWidth = 0
            coedButton.layer.borderWidth = 0
        } else if leagueType == "womens" {
            womensBtn.layer.borderWidth = 2.0
            womensBtn.layer.borderColor = UIColor.white.cgColor
            
            nextBtn.layer.borderWidth = 2.0
            nextBtn.layer.borderColor = UIColor.white.cgColor
            
            mensBtn.layer.borderWidth = 0
            coedButton.layer.borderWidth = 0
        } else {
            coedButton.layer.borderWidth = 2.0
            coedButton.layer.borderColor = UIColor.white.cgColor
            
            nextBtn.layer.borderWidth = 2.0
            nextBtn.layer.borderColor = UIColor.white.cgColor
            
            mensBtn.layer.borderWidth = 0
            womensBtn.layer.borderWidth = 0
        }
    }
    
    // Will let us pass data through view controllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
    
}
