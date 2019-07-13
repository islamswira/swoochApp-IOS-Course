//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Islam Swira on 7/13/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.player = Player()

        
    }
    
    @IBAction func unwindfromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSeguea", sender: self)
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectedLeague(leagueType: "coed")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectedLeague(leagueType: "women")
    }
    
    @IBAction func onMenTapped(_ sender: Any) {
        selectedLeague(leagueType: "men")
    }
    
    func selectedLeague(leagueType:String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player_2 = player
        }
    }
}
