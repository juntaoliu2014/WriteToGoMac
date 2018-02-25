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
    

    
    
    
    @IBAction func ShowPer(_ sender: NSButton)
    {
       
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowPer"), sender: self)
    }
    
    @IBAction func ShowPro(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowPro"), sender: self)
    }
  
    @IBAction func ShowCom(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowCom"), sender: self)
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    override func prepare(for segue: NSStoryboardSegue, sender: Any?)
    {
        self.view.window?.close()
    }

}

