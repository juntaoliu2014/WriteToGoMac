//
//  DescriptiveW.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/27/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class DescriptiveW: NSViewController
{
    
    
    @IBAction func ShowDesWE(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowDesWE"), sender: self)
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

