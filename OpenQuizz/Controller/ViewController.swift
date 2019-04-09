//
//  ViewController.swift
//  OpenQuizz
//
//  Created by Graphic Influence on 08/04/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newGameButton: UIButton!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var questionView: QuestionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didTapNewGameButton() {
        startNewGame()
    }
    private func startNewGame() {
    activityIndicator.isHidden = false
        newGameButton.isHidden = true
        
        questionView.title = "Loading..."
        questionView.style = .standard
        
        scoreLabel.text = "0 / 10"
    }
    
}

