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
    

    @IBOutlet weak var MMBox1: NSTextField!
 
    var saveString = "Temp"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
        
        readMMBox1File()
        //call the function when the view load
        
        
    }
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func saveMMBox1File()
    {
        saveString = MMBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    
    func readMMBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    @IBAction func MMBox1Entry(_ sender: NSTextField)
    {
        saveMMBox1File()
    }
    
    @IBAction func ShowPerWW(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowPerWW"), sender: self)
    }
    
    
    
    
    
    
}
