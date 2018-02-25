//
//  ComparativeW.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/25/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class ComparativeW: NSViewController
{
    
    
    @IBAction func ShowComWE(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowComWE"), sender: self)
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

