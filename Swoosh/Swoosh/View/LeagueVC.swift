//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Lance Robbins on 12/12/17.
//  Copyright © 2017 Appcation. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    // make it implicitly unwrapped since we don't run this to run unless there is a player!
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    // whenever a segue is triggered, prepare will be done, and data between VCs is passed here
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // if let sequence will try and run an operation, in this case to make sure the passed in segue is skillVC, if not skillVC it will fail this particular if let
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player // set destination VC player to the player in this VC (so it's passed!)
            // prepare for segue is ALWAYS CALLED BEFORE viewDidLoad on the destination VC
        }
    }
}

