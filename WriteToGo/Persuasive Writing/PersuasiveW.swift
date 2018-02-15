//
//  File.swift
//  WriteToGo
//
//  Created by Julie Liu on 1/25/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class PersuasiveW: NSViewController
{

    
    @IBAction func ShowPerWE(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowPerWE"), sender: self)
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
