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
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do view setup here.
        
        readMMBox1File()
        //call the function when the view load
        
        readMMBox2File()
        readMMBox3File()
        readMMBox4File()
        readMMBox5File()
        readMMBox6File()
        readMMBox7File()
        readMMBox8File()
        readMMBox9File()
        readMMBox10File()
        readMMBox11File()
        readMMBox12File()
        readMMBox13File()
        readMMBox14File()
    }
    
    var saveString = "Temp"
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
    //MMBox1
    @IBOutlet weak var MMBox1: NSTextField!

    func saveMMBox1File()
    {
        saveString = MMBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox1.stringValue = readString
            //read the information in the box named "map1Text"
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    
    //MMBox2
    @IBOutlet weak var MMBox2: NSTextField!
    
    func saveMMBox2File()
    {
        saveString = MMBox2.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox2.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox2File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox2.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox2.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    
    //MMBox3
    @IBOutlet weak var MMBox3: NSTextField!
    
    func saveMMBox3File()
    {
        saveString = MMBox3.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox3.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox3File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox3.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox3.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox4
    @IBOutlet weak var MMBox4: NSTextField!
    func saveMMBox4File()
    {
        saveString = MMBox4.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox4.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox4File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox4.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox4.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox5
    @IBOutlet weak var MMBox5: NSTextField!
    func saveMMBox5File()
    {
        saveString = MMBox5.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox5.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox5File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox5.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox5.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox6
    @IBOutlet weak var MMBox6: NSTextField!
    func saveMMBox6File()
    {
        saveString = MMBox6.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox6.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox6File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox6.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox6.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox7
    @IBOutlet weak var MMBox7: NSTextField!
    func saveMMBox7File()
    {
        saveString = MMBox7.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox7.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox7File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox7.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox7.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox8
    @IBOutlet weak var MMBox8: NSTextField!
    func saveMMBox8File()
    {
        saveString = MMBox8.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox8.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox8File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox8.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox8.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox9
    @IBOutlet weak var MMBox9: NSTextField!
    func saveMMBox9File()
    {
        saveString = MMBox9.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox9.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox9File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox9.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox9.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox10
    @IBOutlet weak var MMBox10: NSTextField!
    func saveMMBox10File()
    {
        saveString = MMBox10.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox10.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox10File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox10.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox10.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox11
    @IBOutlet weak var MMBox11: NSTextField!
    func saveMMBox11File()
    {
        saveString = MMBox11.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox11.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox11File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox11.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox11.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox12
    @IBOutlet weak var MMBox12: NSTextField!
    func saveMMBox12File()
    {
        saveString = MMBox12.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox12.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox12File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox12.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox12.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox13
    @IBOutlet weak var MMBox13: NSTextField!
    func saveMMBox13File()
    {
        saveString = MMBox13.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox13.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox13File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox13.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox13.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    //MMBox14
    @IBOutlet weak var MMBox14: NSTextField!
    func saveMMBox14File()
    {
        saveString = MMBox14.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("MMBox14.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readMMBox14File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("MMbox14.txt")
        do
        {
            readString = try String (contentsOf:filename)
            MMBox14.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    
    
    
    @IBAction func MMBox1Entry(_ sender: NSTextField)
    {
        saveMMBox1File()
    }
    @IBAction func MMBox2Entry(_ sender: NSTextField)
    {
        saveMMBox2File()
    }
    @IBAction func MMBox3Entry(_ sender: NSTextField)
    {
        saveMMBox3File()
    }
    @IBAction func MMBox4Entry(_ sender: NSTextField)
    {
        saveMMBox4File()
    }
    @IBAction func MMBox5Entry(_ sender: NSTextField)
    {
        saveMMBox5File()
    }
    @IBAction func MMBox6Entry(_ sender: NSTextField)
    {
        saveMMBox6File()
    }
    @IBAction func MMBox7Entry(_ sender: NSTextField)
    {
        saveMMBox7File()
    }
    @IBAction func MMBox8Entry(_ sender: NSTextField)
    {
        saveMMBox8File()
    }
    @IBAction func MMBox9Entry(_ sender: NSTextField)
    {
        saveMMBox9File()
    }
    @IBAction func MMBox10Entry(_ sender: NSTextField)
    {
        saveMMBox10File()
    }
    @IBAction func MMBox11Entry(_ sender: NSTextField)
    {
        saveMMBox11File()
    }
    @IBAction func MMBox12Entry(_ sender: NSTextField)
    {
        saveMMBox12File()
    }
    @IBAction func MMBox13Entry(_ sender: NSTextField)
    {
        saveMMBox13File()
    }
    @IBAction func MMBox14Entry(_ sender: NSTextField)
    {
        saveMMBox14File()
    }
    

    
    @IBAction func ShowPerWW(_ sender: NSButton)
    {
        
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowPerWW"), sender: self)
    }
    
}
