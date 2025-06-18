//
//  tableViewContent.swift
//  generalSetting-homework
//
//  Created by Siwakorn Phanitphichetvong on 13/6/2568 BE.
//

import Foundation
import UIKit

class tableViewContent: UITableViewCell{
    
        @IBOutlet weak var titleLabel: UILabel!

        func configure(with text: String) {
            titleLabel.text = text
        }
    }

