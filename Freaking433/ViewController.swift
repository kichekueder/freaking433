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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTableView.dataSource = self // how many rows
        mainTableView.delegate = self // what goes into rows
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return 10 // Dummy number for now
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell() // Create empty cell
        cell.textLabel?.text = "HELLO THERE"
        return cell // Return cell
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}

