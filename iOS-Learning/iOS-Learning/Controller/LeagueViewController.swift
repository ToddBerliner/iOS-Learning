//
//  LeagueViewController.swift
//  iOS-Learning
//
//  Created by Todd Berliner on 10/12/18.
//  Copyright © 2018 Todd Berliner. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {

    var player: Player!
    
    @IBOutlet weak var continueBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        continueBtn.isEnabled = false
    }
    @IBAction func mensLeagueTapped(_ sender: Any) {
        selectLeague(selectedLeague: "mens")
    }
    @IBAction func womensLeagueTapped(_ sender: Any) {
        selectLeague(selectedLeague: "womens")
    }
    @IBAction func coedLeagueTapped(_ sender: Any) {
        selectLeague(selectedLeague: "coed")
    }
    func selectLeague(selectedLeague: String) {
        player.desiredLeague = selectedLeague
        continueBtn.isEnabled = true
    }
    @IBAction func continueTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillSeque", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillViewController = segue.destination as? SkillViewController {
            skillViewController.player = player
        }
    }
}
