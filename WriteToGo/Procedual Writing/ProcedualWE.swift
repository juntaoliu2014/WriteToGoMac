//
//  ProcedualWE.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/22/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class ProceduralWE: NSViewController
{
    
    
    @IBAction func ShowProMM(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowProMM"), sender: self)
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    
}
