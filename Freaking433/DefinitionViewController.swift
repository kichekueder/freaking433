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
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var creationYearLabel: UILabel!
    
    var emoji = "No emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        switch emoji {
            
        case "😀":
            definitionLabel.text = "Smile!!!"
            categoryLabel.text = "Category: Smiley"
            creationYearLabel.text = "Created in: 2001"
        case "😎":
            definitionLabel.text = "Shades. Cool."
            categoryLabel.text = "Category: Smiley"
            creationYearLabel.text = "Created in: 2007"
        case "🦋":
            definitionLabel.text = "Butterfly"
            categoryLabel.text = "Category: Animal"
            creationYearLabel.text = "Created in: 2011"
        case "🌈":
            definitionLabel.text = "Under the rainbow."
            categoryLabel.text = "Category: Symbol"
            creationYearLabel.text = "Created in: 2013"
        case "🍺":
            definitionLabel.text = "Santé!"
            categoryLabel.text = "Category: Entertainment"
            creationYearLabel.text = "Created in: 2010"
        case "🎲":
            definitionLabel.text = "Good luck!"
            categoryLabel.text = "Category: Entertainment"
            creationYearLabel.text = "Created in: 2014"
        case "🇳🇿":
            definitionLabel.text = "Aotearoa"
            categoryLabel.text = "Category: Flag"
            creationYearLabel.text = "Created in: 2015"
        default:
            definitionLabel.text = "No emoji picked."
            categoryLabel.text = "No categoty assignable"
            creationYearLabel.text = "No creation year assignable."
        
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
