//
//  ComparativeWW.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/25/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class ComparativeWW: NSViewController
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
        
        readCWWBox1File()
        
    }
    
    
    //CWWBox1
    @IBOutlet weak var CWWBox1: NSTextField!
    
    
    func saveCWWBox1File()
    {
        saveString = CWWBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("CWWBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readCWWBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("CWWbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            CWWBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    @IBAction func PWWBox1Entry(_ sender: NSTextField)
    {
        saveCWWBox1File()
    }
    
    
}
