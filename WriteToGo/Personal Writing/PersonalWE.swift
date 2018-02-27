//
//  PersonalWE.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/26/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class PersonalWE: NSViewController
{
    
    
    @IBAction func ShowPersMM(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowPersMM"), sender: self)
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    
}
