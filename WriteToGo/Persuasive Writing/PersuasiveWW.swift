//
//  PersuasiveWW.swift
//  WriteToGo
//
//  Created by Julie Liu on 2/7/18.
//  Copyright © 2018 Julie Liu. All rights reserved.
//

import Cocoa

class PersuasiveWW: NSViewController
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
        readWWBox1File()
    }
    
    
    //WWBox1
    @IBOutlet weak var WWBox1: NSTextField!
    func saveWWBox1File()
    {
        saveString = WWBox1.stringValue
        let str = saveString
        let filename = getDocumentsDirectory().appendingPathComponent("WWBox1.txt")
        do
        {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        }
        catch
        {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func readWWBox1File()
    {
        var readString = ""
        let filename = getDocumentsDirectory().appendingPathComponent("WWbox1.txt")
        do
        {
            readString = try String (contentsOf:filename)
            WWBox1.stringValue = readString
        }
        catch _ as NSError
        {
            print("Read Error")
        }
    }
    @IBAction func MWBox1Entry(_ sender: NSTextField)
    {
        saveWWBox1File()
    }
    
    
}
