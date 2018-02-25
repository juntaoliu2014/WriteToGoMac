//
//  ProcedualWW.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/22/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class ProceduralWW: NSViewController
{
    var saveString = "Temp"
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
        
        readPWWBox1File()
        
    }
    
    
    //PWWBox1
    @IBOutlet weak var PWWBox1: NSTextField!
    
    
    func savePWWBox1File()
    {
        saveString = PWWBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PWWBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPWWBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PWWbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PWWBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    @IBAction func PWWBox1Entry(_ sender: NSTextField)
    {
        savePWWBox1File()
    }
    

}


