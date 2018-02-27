//
//  DescriptiveWW.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/27/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class DescriptiveWW: NSViewController
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
        
        readDWWBox1File()
        
    }
    
    
    //DWWBox1
    @IBOutlet weak var DWWBox1: NSTextField!
    
    
    func saveDWWBox1File()
    {
        saveString = DWWBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("DWWBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readDWWBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("DWWbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            DWWBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    @IBAction func IWWBox1Entry(_ sender: NSTextField)
    {
        saveDWWBox1File()
    }
    
    
}
