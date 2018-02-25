//
//  ProcedualWM.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/22/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class ProceduralWM: NSViewController
{
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
        
        readPMMBox1File()
        //call the function when the view load
        
        readPMMBox2File()
        readPMMBox3File()
        readPMMBox4File()
        readPMMBox5File()
        readPMMBox6File()
        readPMMBox7File()
        readPMMBox8File()
        
    }
    
    
    var saveString = "Temp"
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
    //PMMBox1
    @IBOutlet weak var PMMBox1: NSTextField!
    
    func savePMMBox1File()
    {
        saveString = PMMBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PMMBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPMMBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PMMbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PMMBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //PMMBox2
    
    @IBOutlet weak var PMMBox2: NSTextField!
    
    func savePMMBox2File()
    {
        saveString = PMMBox2.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PMMBox2.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPMMBox2File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PMMbox2.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PMMBox2.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //PMMBox3
    @IBOutlet weak var PMMBox3: NSTextField!
    
    
    func savePMMBox3File()
    {
        saveString = PMMBox3.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PMMBox3.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPMMBox3File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PMMbox3.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PMMBox3.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //PMMBox4
    
    @IBOutlet weak var PMMBox4: NSTextField!
    
    func savePMMBox4File()
    {
        saveString = PMMBox4.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PMMBox4.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPMMBox4File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PMMbox4.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PMMBox4.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //PMMBox5
    @IBOutlet weak var PMMBox5: NSTextField!
    
    
    func savePMMBox5File()
    {
        saveString = PMMBox5.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PMMBox5.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPMMBox5File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PMMbox5.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PMMBox5.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //PMMBox6
    @IBOutlet weak var PMMBox6: NSTextField!
    
    
    func savePMMBox6File()
    {
        saveString = PMMBox6.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PMMBox6.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPMMBox6File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PMMbox6.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PMMBox6.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    //PMMBox7
    @IBOutlet weak var PMMBox7: NSTextField!
    
    
    func savePMMBox7File()
    {
        saveString = PMMBox7.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PMMBox7.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPMMBox7File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PMMbox7.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PMMBox7.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //PMMBox8
    @IBOutlet weak var PMMBox8: NSTextField!
    
    
    func savePMMBox8File()
    {
        saveString = PMMBox8.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PMMBox8.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readPMMBox8File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PMMbox8.txt")
        do
        {
            readString = try String (contentsOf:filename)
            PMMBox8.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    
    @IBAction func PMMBox1Entry(_ sender: NSTextField)
    {
        savePMMBox1File()
    }
    @IBAction func PMMBox2Entry(_ sender: NSTextField)
    {
        savePMMBox2File()
    }
    @IBAction func PMMBox3Entry(_ sender: NSTextField)
    {
        savePMMBox3File()
    }
    @IBAction func PMMBox4Entry(_ sender: NSTextField)
    {
        savePMMBox4File()
    }
    @IBAction func PMMBox5Entry(_ sender: NSTextField)
    {
        savePMMBox5File()
    }
    @IBAction func PMMBox6Entry(_ sender: NSTextField)
    {
        savePMMBox6File()
    }
    @IBAction func PMMBox7Entry(_ sender: NSTextField)
    {
        savePMMBox7File()
    }
    @IBAction func PMMBox8Entry(_ sender: NSTextField)
    {
        savePMMBox8File()
    }
    
    
    @IBAction func ShowProWW(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowProWW"), sender: self)
    }
    
    
    
}
