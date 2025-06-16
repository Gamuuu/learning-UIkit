//
//  ViewController.swift
//  generalSetting-homework
//
//  Created by Siwakorn Phanitphichetvong on 6/6/2568 BE.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var questionMarkimmageview: UIImageView!
    @IBOutlet weak var viewGeneralSetting: UIView!
    @IBOutlet weak var viewBigIcon: UIView!
    
    @IBOutlet weak var GeneralLabel: UILabel!
    
    @IBOutlet weak var ViewManyMenuCorner: UIView!
    @IBOutlet weak var ViewMenuCorner: UIView!

    
    @IBOutlet weak var viewCornerIcon: UIView!
    @IBOutlet weak var viewCornerIcon0: UIView!
    @IBOutlet weak var viewCornerIcon1: UIView!
    @IBOutlet weak var viewCornerIcon2: UIView!
    @IBOutlet weak var viewCornerIcon3: UIView!
    @IBOutlet weak var viewCornerIcon4: UIView!

    @IBOutlet weak var largeBoxView: UIView!
    
//    @IBOutlet weak var stackviewBackground: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewBigIcon.layer.cornerRadius = 8
        viewGeneralSetting.layer.cornerRadius = 10
        
        viewCornerIcon.layer.cornerRadius = 5
        viewCornerIcon0.layer.cornerRadius = 5
        viewCornerIcon1.layer.cornerRadius = 5
        viewCornerIcon2.layer.cornerRadius = 5
        viewCornerIcon3.layer.cornerRadius = 5
        viewCornerIcon4.layer.cornerRadius = 5


        ViewMenuCorner.layer.cornerRadius = 10
        ViewManyMenuCorner.layer.cornerRadius = 10
        
//        stackviewBackground.layer.cornerRadius = 20
        
        largeBoxView.layer.cornerRadius = 7
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 8
        paragraphStyle.alignment = .center

        let attributedString = NSAttributedString(
            string: GeneralLabel.text ?? "",
            attributes: [.paragraphStyle: paragraphStyle]
        )
        GeneralLabel.attributedText = attributedString
    }
}


