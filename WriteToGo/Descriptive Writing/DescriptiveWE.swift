//
//  DescriptiveWE.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/27/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class DescriptiveWE: NSViewController
{
    
    
    @IBAction func ShowDesMM(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowDesMM"), sender: self)
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    
}
