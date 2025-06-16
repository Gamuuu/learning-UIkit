//
//  TableViewContent2.swift
//  generalSetting-homework
//
//  Created by Siwakorn Phanitphichetvong on 16/6/2568 BE.
//

import UIKit

class TableViewContent2: UIViewController {

    @IBOutlet weak var titleLabel2: UILabel!
    
    
    func configure(with text: String) {
        titleLabel2.text = text
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
