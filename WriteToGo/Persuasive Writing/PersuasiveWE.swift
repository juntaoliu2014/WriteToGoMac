//
//  PersuasiveWE.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/7/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class PersuasiveWE: NSViewController
{
    
    @IBAction func ShowPerWM(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowPerWM"), sender: self)
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    
    
    
    
    
}

