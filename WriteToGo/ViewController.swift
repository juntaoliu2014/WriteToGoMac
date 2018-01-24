//
//  ViewController.swift
//  WriteToGo
//
//  Created by Julie Liu on 1/16/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var AppLabel: NSTextField!
  
    @IBOutlet weak var OpenPer: NSButton!
    
    @IBAction func ShowPer(_ sender: NSButton)
    {
        
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

