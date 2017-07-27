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
    
    // Used for the above
    func selectLeague(leagueType: String) {
        player.desiredLeage = leagueType
        nextBtn.isEnabled = true
        
        if leagueType == "mens" {
            mensBtn.layer.borderWidth = 2.0
            mensBtn.layer.borderColor = UIColor.white.cgColor
            
            womensBtn.layer.borderWidth = 0
            coedButton.layer.borderWidth = 0
        } else if leagueType ==t "womens" {
            womensBtn.layer.borderWidth = 2.0
            womensBtn.layer.borderColor = UIColor.white.cgColor
            
            mensBtn.layer.borderWidth = 0
            coedButton.layer.borderWidth = 0
        } else {
            coedButton.layer.borderWidth = 2.0
            coedButton.layer.borderColor = UIColor.white.cgColor
            
            mensBtn.layer.borderWidth = 0
            womensBtn.layer.borderWidth = 0
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
