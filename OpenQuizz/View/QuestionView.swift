//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by Graphic Influence on 09/04/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit

class QuestionView: UIView {

    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!

    enum Style {
        case correct, incorrect, standard
    }
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            backgroundColor = UIColor(red: 200/255.0, green: 236/255.0, blue: 160/255.0, alpha: 1)
            icon.image = #imageLiteral(resourceName: "Icon Correct-1")
            icon.isHidden = false
        case .incorrect:
            backgroundColor = #colorLiteral(red: 0.968627451, green: 0.5254901961, blue: 0.5803921569, alpha: 1)
            icon.image = #imageLiteral(resourceName: "Icon Error-2")
            icon.isHidden = false
        case .standard:
            backgroundColor = #colorLiteral(red: 0.337254902, green: 0.4196078431, blue: 0.5019607843, alpha: 1)
            icon.isHidden = true
        }
    }
    var title = "" {
        didSet {
            label.text = title
        }
    }
    
}
