//
//  ComparativeWM.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/25/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class ComparativeWM: NSViewController
{
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
        
        readCMMBox1File()
        //call the function when the view load
        
        readCMMBox2File()
        readCMMBox3File()
        readCMMBox4File()
        readCMMBox5File()
        readCMMBox6File()
        readCMMBox7File()
        readCMMBox8File()

    }
    
    
    var saveString = "Temp"
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
    //CMMBox1
    @IBOutlet weak var CMMBox1: NSTextField!
    
    func saveCMMBox1File()
    {
        saveString = CMMBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("CMMBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readCMMBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("CMMbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            CMMBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //CMMBox2
    
    @IBOutlet weak var CMMBox2: NSTextField!
    
    func saveCMMBox2File()
    {
        saveString = CMMBox2.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("CMMBox2.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readCMMBox2File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("CMMbox2.txt")
        do
        {
            readString = try String (contentsOf:filename)
            CMMBox2.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //CMMBox3
    @IBOutlet weak var CMMBox3: NSTextField!
    
    
    func saveCMMBox3File()
    {
        saveString = CMMBox3.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("CMMBox3.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readCMMBox3File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("CMMbox3.txt")
        do
        {
            readString = try String (contentsOf:filename)
            CMMBox3.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //CMMBox4
    
    @IBOutlet weak var CMMBox4: NSTextField!
    
    func saveCMMBox4File()
    {
        saveString = CMMBox4.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("CMMBox4.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readCMMBox4File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("CMMbox4.txt")
        do
        {
            readString = try String (contentsOf:filename)
            CMMBox4.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //CMMBox5
    @IBOutlet weak var CMMBox5: NSTextField!
    
    
    func saveCMMBox5File()
    {
        saveString = CMMBox5.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("CMMBox5.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readCMMBox5File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("CMMbox5.txt")
        do
        {
            readString = try String (contentsOf:filename)
            CMMBox5.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //CMMBox6
    @IBOutlet weak var CMMBox6: NSTextField!
    
    
    func saveCMMBox6File()
    {
        saveString = CMMBox6.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("CMMBox6.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readCMMBox6File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("CMMbox6.txt")
        do
        {
            readString = try String (contentsOf:filename)
            CMMBox6.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    //CMMBox7
    @IBOutlet weak var CMMBox7: NSTextField!
    
    
    func saveCMMBox7File()
    {
        saveString = CMMBox7.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("CMMBox7.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readCMMBox7File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("CMMbox7.txt")
        do
        {
            readString = try String (contentsOf:filename)
            CMMBox7.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //CMMBox8
    @IBOutlet weak var CMMBox8: NSTextField!
    
    
    func saveCMMBox8File()
    {
        saveString = CMMBox8.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("CMMBox8.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readCMMBox8File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("CMMbox8.txt")
        do
        {
            readString = try String (contentsOf:filename)
            CMMBox8.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    @IBAction func CMMBox1Entry(_ sender: NSTextField)
    {
        saveCMMBox1File()
    }
    @IBAction func CMMBox2Entry(_ sender: NSTextField)
    {
        saveCMMBox2File()
    }
    @IBAction func CMMBox3Entry(_ sender: NSTextField)
    {
        saveCMMBox3File()
    }
    @IBAction func CMMBox4Entry(_ sender: NSTextField)
    {
        saveCMMBox4File()
    }
    @IBAction func CMMBox5Entry(_ sender: NSTextField)
    {
        saveCMMBox5File()
    }
    @IBAction func CMMBox6Entry(_ sender: NSTextField)
    {
        saveCMMBox6File()
    }
    @IBAction func CMMBox7Entry(_ sender: NSTextField)
    {
        saveCMMBox7File()
    }
    @IBAction func CMMBox8Entry(_ sender: NSTextField)
    {
        saveCMMBox8File()
    }
    
    
    
    @IBAction func ShowComWW(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowComWW"), sender: self)
    }
    
    
    
}

