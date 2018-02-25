//
//  ComparativeWE.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/25/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class ComparativeWE: NSViewController
{
    
    
    @IBAction func ShowComMM(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowComMM"), sender: self)
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    
}

