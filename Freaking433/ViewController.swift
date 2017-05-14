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
    
    var emojis = ["😀","😎","🦋","🌈","🍺","🎲","🇳🇿"] // Array of emojis
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTableView.dataSource = self // how many rows
        mainTableView.delegate = self // what goes into rows
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count // Number of elements in the emojis array
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell() // Create empty cell
        cell.textLabel?.text = emojis[indexPath.row] // Collect element from array, E0->C0,E1->C1 etc
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
    
    
    
    
}

