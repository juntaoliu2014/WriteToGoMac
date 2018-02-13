//
//  PersuasiveWM.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/7/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class PersuasiveWM: NSViewController
{
    
    @IBOutlet weak var map1Text: NSScrollView!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
        
        readPersuasiveFile()
        //call the function when the view load
        
    }
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
    func readPersuasiveFile()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MM1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            map1Text.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    @IBOutlet weak var NextButton: NSButton!
    
    @IBAction func NextAction(_ sender: Any)
    {
        
    }
    @IBOutlet weak var PreviousButton: NSButton!
    
    @IBAction func PreviousAction(_ sender: Any)
    {
        
    }
    
    
    
}
