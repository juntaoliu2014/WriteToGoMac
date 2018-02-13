//
//  IN3.swift
//  WriteToGo
//
//  Created by Julie Liu on 1/24/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class InputName3: NSViewController
{
    
    
 
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        readPersuasiveFile()
        // Do view setup here.
        
    }
    
    var saveString = "Temp"
    
    func getDocumentsDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
    func readPersuasiveFile()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("PersuasiveWriting.txt")
        do
        {
            readString = try String (contentsOf:filename)
            DisplayTextBox.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
  
    @IBOutlet weak var SaveText: NSButton!
    @IBOutlet weak var UserTextField: NSTextField!
    @IBOutlet weak var CreateButton: NSButton!
    

    @IBAction func SaveText(_ sender: NSButton) {
        NSLog("Save started")
        saveString = UserTextField.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("PersuasiveWriting.txt")
        do {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
  
    
    @IBAction func ShowPerW(_ sender: NSButton)
    {
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowPerW"), sender: self)
    }
    
    @IBAction func ShowMain(_ sender: NSButton)
    {
        NSLog ("before dismiss")
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "ShowMain"), sender: self)
    }
    
  

    
}





