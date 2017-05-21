//
//  ViewController.swift
//  Freaking433
//
//  Created by Tom Munhoven on 13/05/2017.
//  Copyright © 2017 Tom Munhoven. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // ^^^ added UITableViewDataSource and UITableViewDelegate ^^^
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var emojis : [Emoji] = [] // Declare only an array of class Emoji
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTableView.dataSource = self // how many rows
        mainTableView.delegate = self // what goes into rows
        emojis = makeEmojiArray() // create the Emojis array from the method below.
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count // Number of elements in the emojis array
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell() // Create empty cell
        let emoji = emojis[indexPath.row] // Assign emoji from Array created through method
        cell.textLabel?.text = emoji.stringEmoji // Collect label from array
        return cell // Return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true) // The selected row deselects itself so it is no longer shaded when returning.
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji) // Emoji selected passed onto sender
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.category = "Smiley"
        emoji1.creationYear = 2001
        emoji1.definition = "Smile!!!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.category = "Smiley"
        emoji2.creationYear = 2007
        emoji2.definition = "Cool"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🦋"
        emoji3.category = "Animal"
        emoji3.creationYear = 2011
        emoji3.definition = "Butterfly"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🌈"
        emoji4.category = "Symbol"
        emoji4.creationYear = 2013
        emoji4.definition = "Under the rainbow."
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🍺"
        emoji5.category = "Entertainment"
        emoji5.creationYear = 2010
        emoji5.definition = "Santé!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🎲"
        emoji6.category = "Entertainment"
        emoji6.creationYear = 2014
        emoji6.definition = "Good Luck!"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🇳🇿"
        emoji7.category = "Flag"
        emoji7.creationYear = 2015
        emoji7.definition = "Aotearoa"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
        
    }
    
}
