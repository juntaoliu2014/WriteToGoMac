//
//  DescriptiveWM.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/27/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class DescriptiveWM: NSViewController
{
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
        
        readDMMBox1File()
        //call the function when the view load
        
        readDMMBox2File()
        readDMMBox3File()
        readDMMBox4File()
        readDMMBox5File()
        readDMMBox6File()
        
    }
    
    
    var saveString = "Temp"
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
    //DMMBox1
    @IBOutlet weak var DMMBox1: NSTextField!
    
    func saveDMMBox1File()
    {
        saveString = DMMBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("DMMBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readDMMBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("DMMbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            DMMBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //DMMBox2
    
    @IBOutlet weak var DMMBox2: NSTextField!
    
    func saveDMMBox2File()
    {
        saveString = DMMBox2.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("DMMBox2.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readDMMBox2File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("DMMbox2.txt")
        do
        {
            readString = try String (contentsOf:filename)
            DMMBox2.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //DMMBox3
    @IBOutlet weak var DMMBox3: NSTextField!
    
    
    func saveDMMBox3File()
    {
        saveString = DMMBox3.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("DMMBox3.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readDMMBox3File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("DMMbox3.txt")
        do
        {
            readString = try String (contentsOf:filename)
            DMMBox3.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //DMMBox4
    
    @IBOutlet weak var DMMBox4: NSTextField!
    
    func saveDMMBox4File()
    {
        saveString = DMMBox4.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("DMMBox4.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readDMMBox4File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("DMMbox4.txt")
        do
        {
            readString = try String (contentsOf:filename)
            DMMBox4.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //DMMBox5
    @IBOutlet weak var DMMBox5: NSTextField!
    
    
    func saveDMMBox5File()
    {
        saveString = DMMBox5.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("DMMBox5.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readDMMBox5File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("DMMbox5.txt")
        do
        {
            readString = try String (contentsOf:filename)
            DMMBox5.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //DMMBox6
    @IBOutlet weak var DMMBox6: NSTextField!
    
    
    func saveDMMBox6File()
    {
        saveString = DMMBox6.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("DMMBox6.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readDMMBox6File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("DMMbox6.txt")
        do
        {
            readString = try String (contentsOf:filename)
            DMMBox6.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    
    @IBAction func DMMBox1Entry(_ sender: NSTextField)
    {
        saveDMMBox1File()
    }
    @IBAction func DMMBox2Entry(_ sender: NSTextField)
    {
        saveDMMBox2File()
    }
    @IBAction func DMMBox3Entry(_ sender: NSTextField)
    {
        saveDMMBox3File()
    }
    @IBAction func DMMBox4Entry(_ sender: NSTextField)
    {
        saveDMMBox4File()
    }
    @IBAction func DMMBox5Entry(_ sender: NSTextField)
    {
        saveDMMBox5File()
    }
    @IBAction func DMMBox6Entry(_ sender: NSTextField)
    {
        saveDMMBox6File()
    }
    
    
    
    @IBAction func ShowDesWW(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowDesWW"), sender: self)
    }
    
    
    
}
