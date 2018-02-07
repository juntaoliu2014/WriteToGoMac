//
//  IN3.swift
//  WriteToGo
//
//  Created by Julie Liu on 1/24/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class InputName3: NSViewController
{
    
    
 
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBOutlet weak var CreateButton: NSButton!
    
    @IBAction func CreateAction(_ sender: Any)
    {
        
    }
    
  
    @IBAction func CancelAction(_ sender: Any)
    {
        self.dismissViewController(self)
    }
    
}





