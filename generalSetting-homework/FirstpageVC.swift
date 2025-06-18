//
//  navigation.swift
//  generalSetting-homework
//
//  Created by Siwakorn Phanitphichetvong on 16/6/2568 BE.
//

import UIKit

class FirstpageVC: UIViewController {

    @IBAction func goToGeneralSetting(_ sender: UIButton) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let generalSettingVC = mainStoryboard.instantiateViewController(withIdentifier: "GeneralSettingVC") as? ViewController {
            self.navigationController?.pushViewController(generalSettingVC, animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("✅ FirstpageVC loaded")
    }
}
