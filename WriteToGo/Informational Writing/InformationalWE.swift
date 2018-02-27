//
//  InformationalWE.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/27/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class InformationalWE: NSViewController
{
    
    
    @IBAction func ShowInMM(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowInMM"), sender: self)
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    
}

