//
//  ViewController.swift
//  Concentration
//
//  Created by MacBook Pro on 2/2/20.
//  Copyright © 2020 Adham Ragab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet{
            flipsLabel.text = "Flips: \(flipCount)"
        }
    }
    @IBOutlet var flipsLabel: UILabel!
    @IBOutlet var flipButtons: [UIButton]!
    
    var emojiChoices = ["🤡","👻","🤡","👻"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func flipButtonPressed(_ sender: UIButton) {
        flipCount += 1
        if let carNumber = flipButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[carNumber], on: sender)
        }else{
            print("card not in stack")
        }
        
    }
    
   
    
    func flipCard(withEmoji emoji:String,on button:UIButton) {
        
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    
    
    
}

