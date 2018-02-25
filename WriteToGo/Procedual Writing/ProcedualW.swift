//
//  ProcedualW.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/22/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class ProceduralW: NSViewController
{
    
    
    @IBAction func ShowProWE(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowProWE"), sender: self)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?)
    {
        self.view.window?.close()
    }
    
    
}
