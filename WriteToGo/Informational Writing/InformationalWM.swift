//
//  InformationalWM.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/27/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class InformationalWM: NSViewController
{
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
        
        readIMMBox1File()
        //call the function when the view load
        
        readIMMBox2File()
        readIMMBox3File()
        readIMMBox4File()
        
    }
    
    
    var saveString = "Temp"
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
    //IMMBox1
    @IBOutlet weak var IMMBox1: NSTextField!
    
    func saveIMMBox1File()
    {
        saveString = IMMBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("IMMBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readIMMBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("IMMbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            IMMBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //IMMBox2
    
    @IBOutlet weak var IMMBox2: NSTextField!
    
    func saveIMMBox2File()
    {
        saveString = IMMBox2.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("IMMBox2.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readIMMBox2File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("IMMbox2.txt")
        do
        {
            readString = try String (contentsOf:filename)
            IMMBox2.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //IMMBox3
    @IBOutlet weak var IMMBox3: NSTextField!
    
    
    func saveIMMBox3File()
    {
        saveString = IMMBox3.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("IMMBox3.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readIMMBox3File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("IMMbox3.txt")
        do
        {
            readString = try String (contentsOf:filename)
            IMMBox3.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //IMMBox4
    
    @IBOutlet weak var IMMBox4: NSTextField!
    
    func saveIMMBox4File()
    {
        saveString = IMMBox4.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("IMMBox4.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readIMMBox4File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("IMMbox4.txt")
        do
        {
            readString = try String (contentsOf:filename)
            IMMBox4.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    
    @IBAction func IMMBox1Entry(_ sender: NSTextField)
    {
        saveIMMBox1File()
    }
    @IBAction func IMMBox2Entry(_ sender: NSTextField)
    {
        saveIMMBox2File()
    }
    @IBAction func IMMBox3Entry(_ sender: NSTextField)
    {
        saveIMMBox3File()
    }
    @IBAction func IMMBox4Entry(_ sender: NSTextField)
    {
        saveIMMBox4File()
    }
    
    
    
    @IBAction func ShowInWW(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowInWW"), sender: self)
    }
    
    
    
}
