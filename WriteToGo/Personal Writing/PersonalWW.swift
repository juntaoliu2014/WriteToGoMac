//
//  PersonalWW.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/26/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class PersonalWW: NSViewController
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
        
        readPersWWBox1File()
        
    }
    
    
    //PersWWBox1
    @IBOutlet weak var PersWWBox1: NSTextField!
    
    
    func savePersWWBox1File()
    {
        saveString = PersWWBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PersWWBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPersWWBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PersWWbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PersWWBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    @IBAction func PersWWBox1Entry(_ sender: NSTextField)
    {
        savePersWWBox1File()
    }
    
    
}
