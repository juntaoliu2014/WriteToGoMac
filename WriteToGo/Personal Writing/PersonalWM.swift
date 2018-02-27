//
//  PersonalWM.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/26/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class PersonalWM: NSViewController
{
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
        
        readPersMMBox1File()
        //call the function when the view load
        
        readPersMMBox2File()
        readPersMMBox3File()
        readPersMMBox4File()

    }
    
    
    var saveString = "Temp"
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
    //PersMMBox1
    @IBOutlet weak var PersMMBox1: NSTextField!
    
    func savePersMMBox1File()
    {
        saveString = PersMMBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PersMMBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPersMMBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PersMMbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PersMMBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //PersMMBox2
    
    @IBOutlet weak var PersMMBox2: NSTextField!
    
    func savePersMMBox2File()
    {
        saveString = PersMMBox2.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PersMMBox2.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPersMMBox2File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PersMMbox2.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PersMMBox2.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //PersMMBox3
    @IBOutlet weak var PersMMBox3: NSTextField!
    
    
    func savePersMMBox3File()
    {
        saveString = PersMMBox3.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PersMMBox3.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPersMMBox3File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PersMMbox3.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PersMMBox3.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //PersMMBox4
    
    @IBOutlet weak var PersMMBox4: NSTextField!
    
    func savePersMMBox4File()
    {
        saveString = PersMMBox4.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PersMMBox4.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPersMMBox4File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PersMMbox4.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PersMMBox4.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    
    @IBAction func PersMMBox1Entry(_ sender: NSTextField)
    {
        savePersMMBox1File()
    }
    @IBAction func PersMMBox2Entry(_ sender: NSTextField)
    {
        savePersMMBox2File()
    }
    @IBAction func PersMMBox3Entry(_ sender: NSTextField)
    {
        savePersMMBox3File()
    }
    @IBAction func PersMMBox4Entry(_ sender: NSTextField)
    {
        savePersMMBox4File()
    }
    
    
    
    @IBAction func ShowPersWW(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowPersWW"), sender: self)
    }
    
    
    
}


