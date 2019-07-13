//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Islam Swira on 7/13/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player_2: Player!

    @IBOutlet weak var finishBtn: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        selectedSkill(skillType: "bigenner")
    }
    
    @IBAction func onBallerTapped(_ sender: Any) {
        selectedSkill(skillType: "baller")
    }
    
    func selectedSkill(skillType:String){
        player_2.selectedSkill = skillType
        finishBtn.isEnabled = true
    }
    
    @IBAction func onFinishTapped(_ sender: Any) {
        print(player_2.desiredLeague)
        print(player_2.selectedSkill)
    }
}
