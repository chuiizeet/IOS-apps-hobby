//
//  LeagueVC.swift
//  swoosh
//
//  Created by imac on 4/28/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    @IBOutlet weak var nextBtn: BorderButton!
    
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
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }


}
