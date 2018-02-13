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
    
    @IBOutlet weak var PerWMText1: NSScrollView!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
        
        readPersuasiveFile()
        //call the function when the view load
        
        savePersuasiveFile()
        
    }
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func savePersuasiveFile
    {
        saveString = PerWMText1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PerWMText1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    
    func readPersuasiveFile()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PerWMText1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PerWMText1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    
    
}
