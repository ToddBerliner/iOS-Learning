//
//  LeagueViewController.swift
//  iOS-Learning
//
//  Created by Todd Berliner on 10/12/18.
//  Copyright © 2018 Todd Berliner. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {

    @IBOutlet weak var continueBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func mensLeagueTapped(_ sender: Any) {
    }
    @IBAction func womensLeagueTapped(_ sender: Any) {
    }
    @IBAction func coedLeagueTapped(_ sender: Any) {
    }
    @IBAction func continueTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillSeque", sender: self)
    }
}
