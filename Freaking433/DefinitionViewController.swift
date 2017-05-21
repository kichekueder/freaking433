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
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.stringEmoji
        creationYearLabel.text = "Created in: \(emoji.creationYear)"
        definitionLabel.text = emoji.definition
        categoryLabel.text = "Category: \(emoji.category)"
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
