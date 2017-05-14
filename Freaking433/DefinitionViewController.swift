//
//  DefinitionViewController.swift
//  Freaking433
//
//  Created by Tom Munhoven on 14/05/2017.
//  Copyright © 2017 Tom Munhoven. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    
    var emoji = "No emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        switch emoji {
            
        case "😀":
            definitionLabel.text = "Smile!!!"
        case "😎":
            definitionLabel.text = "Shades. Cool."
        case "🦋":
            definitionLabel.text = "Butterfly"
        case "🌈":
            definitionLabel.text = "Under the rainbow."
        case "🍺":
            definitionLabel.text = "Santé!"
        case "🎲":
            definitionLabel.text = "Good luck!"
        case "🇳🇿":
            definitionLabel.text = "Aotearoa"
        default:
            definitionLabel.text = "No emoji picked."
        
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
