//
//  ViewController.swift
//
//
//  Created by Ajay Jain on 6/20/2016
//  Copyright © 2016 Ajay Jain. All rights reserved.
//

import UIKit

class green: UIViewController {
    
    
    @IBOutlet weak var goodwin: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let grayColor = UIColor(red: 222/255.0, green: 222/255.0, blue: 222/255.0, alpha: 1.0)
        let illiniBlue = UIColor(red: 0/255.0, green: 32/255.0, blue: 91/255.0, alpha: 1.0)
        let illiniOrange = UIColor(red: 232/255.0, green: 119/255.0, blue: 34/255.0, alpha: 1.0)
        self.navigationController!.navigationBar.barTintColor = illiniBlue
        self.view.backgroundColor = grayColor
        self.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: illiniOrange]
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        self.navigationController!.navigationBar.tintColor = UIColor.whiteColor()
        let navBgImage:UIImage = UIImage(named: "logo.jpeg")!
        UINavigationBar.appearance().setBackgroundImage(navBgImage, forBarMetrics: .Default)
        let image : UIImage = UIImage(named: "logo1.jpg")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .ScaleAspectFit
        imageView.image = image
        self.navigationItem.titleView = imageView
        print("test")
        greenParse()
    }
    
    
    

    
    var greenMachineOne = "n/a"
    var greenMachineTwo = "n/a"
    var greenMachineThree = "n/a"
    var greenMachineFour = "n/a"
    var greenMachineFive = "n/a"
    var greenMachineSix = "n/a"
    var greenMachineSeven = "n/a"
    var greenMachineEight = "n/a"
    var greenMachineNine = "n/a"
    var greenMachineTen = "n/a"
    var greenMachineEleven = "n/a"
    
    var greenMachineOneStatus = ""
    var greenMachineTwoStatus = ""
    var greenMachineThreeStatus = ""
    var greenMachineFourStatus = ""
    var greenMachineFiveStatus = ""
    var greenMachineSixStatus = ""
    var greenMachineSevenStatus = ""
    var greenMachineEightStatus = ""
    var greenMachineNineStatus = ""
    var greenMachineTenStatus = ""
    var greenMachineElevenStatus = ""

    var array = [String]()
    var elements = [String]()
    
    @IBOutlet var button: UIButton!














    
    

    
    
    
    func greenParse() {
        let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?XallingPage=LMPage&Halls=9&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
        //bousfield let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?CallingPage=LMPage&Halls=2&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
        // larLenlet myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?CallingPage=LMPage&Halls=13&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
        let myURL = NSURL(string: myURLAdress)
        
        let URLTask = NSURLSession.sharedSession().dataTaskWithURL(myURL!) {
            myData, response, error in
            
            guard error == nil else { return }
            
            let myHTMLString = String(data: myData!, encoding: NSUTF8StringEncoding)
            //var range = myHTMLString!.startIndex.advancedBy(12346)..<myHTMLString!.startIndex.advancedBy(12348)
            //let allenWashersAvailable = myHTMLString![rangeOfTLD]
            print("Hello world")
            //print(myHTMLString)
            let html = myHTMLString
            
            if let doc = HTML(html: html!, encoding: NSUTF8StringEncoding) {
                print("h")
                print(doc.title)
                for link in doc.css("font") {  // font, face
                    print(link.text)
                    //print(link["face"])
                    if (link.text != nil){
                        var tempString = link.text!
                        var newString = tempString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()
                            )
                        self.array.append(newString)
                    }
                    /*if (link["face"] != nil){
                        var str = link["face"]!
                        self.array.append(str)
                        print(link["face"]!)
                    //}*/
                    //self.array.append(link["tbody"]!)
                    //print(doc.css("min").text)
                }
                //print(self.array)
                //var elements = Array(Set(self.array))
                //print(elements)
                var n = 0
                while n < self.array.count - 1{
                    if n != 0 && n != 8 && n != 10 && n != 12 && n != 14{
                        if self.array[n] == "In Use" && self.array[n-1] != "In Use"{
                            self.elements.append(self.array[n])
                            self.elements.append(self.array[n+2])
                        }
                        else if self.array[n] == "Available" && self.array[n-1] != "Available"{
                            self.elements.append(self.array[n])
                            self.elements.append("")
                        }
                        else if n == 7{
                            self.elements.append(self.array[n])
                        }
                        else if self.array[n] == self.array[n+1]{
                            self.elements.append(self.array[n])
                        }
                    }
                    
                    
                    n = n + 1
                }
                print(self.elements)
                var str = self.elements[1]
                //print(str)
                self.button.setTitle(str, forState: .Normal)

            }
            
        }
        URLTask.resume()
    }
}
    /*func greenParse() {
        let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMPage?Login=True"
        let myURL = NSURL(string: myURLAdress)
        
        let URLTask = NSURLSession.sharedSession().dataTaskWithURL(myURL!) {
            myData, response, error in
            
            guard error == nil else { return }
            
            let myHTMLString = String(data: myData!, encoding: NSUTF8StringEncoding)
            
            let html = myHTMLString
            
            let URLTask = NSURLSession.sharedSession().dataTaskWithURL(myURL!) {
                myData, response, error in
                
                guard error == nil else { return }
                
                let myHTMLString = String(data: myData!, encoding: NSUTF8StringEncoding)
                //var range = myHTMLString!.startIndex.advancedBy(12346)..<myHTMLString!.startIndex.advancedBy(12348)
                //let allenWashersAvailable = myHTMLString![rangeOfTLD]
                print("Hello world")
                print(myHTMLString)
                
            }
            URLTask.resume()
            
            /*if let doc = HTML(html: html!, encoding: NSUTF8StringEncoding) {
                print("h")
                print(doc.title)
                // Search for nodes by CSS
                for link in doc.css("font") {  // font, face
                    print(link.text)
                    print(link["tbody"])
                    //self.array.append(link["tbody"]!)
                    //print(doc.css("min").text)
                }
                for link in doc.xpath("tbody") {
                    print(link.innerHTML)
                }
                //print(doc.text)*/
            
}*/
            /*//var range = myHTMLString!.startIndex.advancedBy(12346)..<myHTMLString!.startIndex.advancedBy(12348)
            //let allenWashersAvailable = myHTMLString![rangeOfTLD]
            print("Hello world")
            //print(myHTMLString)
            var range = myHTMLString!.startIndex.advancedBy(16243)..<myHTMLString!.startIndex.advancedBy(16252)
            self.greenMachineOne = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(16448)..<myHTMLString!.startIndex.advancedBy(16454)
            self.greenMachineOneStatus = myHTMLString![range]
            if (self.greenMachineOneStatus[self.greenMachineOneStatus.endIndex.predecessor()] == " "){
                self.greenMachineOneStatus = ""
            }
            else if (self.greenMachineOneStatus[self.greenMachineOneStatus.endIndex.predecessor()] == "<"){
                self.greenMachineOneStatus = self.greenMachineOneStatus.substringToIndex(self.greenMachineOneStatus.endIndex.predecessor())
            }
            
            range = myHTMLString!.startIndex.advancedBy(17585)..<myHTMLString!.startIndex.advancedBy(17594)
            self.greenMachineTwo = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(17790)..<myHTMLString!.startIndex.advancedBy(17796)
            self.greenMachineTwoStatus = myHTMLString![range]
            if (self.greenMachineTwoStatus[self.greenMachineTwoStatus.endIndex.predecessor()] == " "){
                self.greenMachineTwoStatus = ""
            }
            else if (self.greenMachineTwoStatus[self.greenMachineTwoStatus.endIndex.predecessor()] == "<"){
                self.greenMachineTwoStatus = self.greenMachineTwoStatus.substringToIndex(self.greenMachineTwoStatus.endIndex.predecessor())
            }
            
            range = myHTMLString!.startIndex.advancedBy(18927)..<myHTMLString!.startIndex.advancedBy(18936)
            self.greenMachineThree = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(19132)..<myHTMLString!.startIndex.advancedBy(19138)
            self.greenMachineThreeStatus = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(20269)..<myHTMLString!.startIndex.advancedBy(20278)
            self.greenMachineFour = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(20474)..<myHTMLString!.startIndex.advancedBy(20480)
            self.greenMachineFourStatus = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(21613)..<myHTMLString!.startIndex.advancedBy(21620)
            self.greenMachineFive = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(21816)..<myHTMLString!.startIndex.advancedBy(21822)
            self.greenMachineFiveStatus = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(22953)..<myHTMLString!.startIndex.advancedBy(22962)
            self.greenMachineSix = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(23158)..<myHTMLString!.startIndex.advancedBy(23164)
            self.greenMachineSixStatus = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(24355)..<myHTMLString!.startIndex.advancedBy(24361)
            self.greenMachineSeven = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(24558)..<myHTMLString!.startIndex.advancedBy(24564)
            self.greenMachineSevenStatus = myHTMLString![range]
            if (self.greenMachineSevenStatus[self.greenMachineSevenStatus.endIndex.predecessor()] == " "){
                self.greenMachineSevenStatus = ""
            }
            else if (self.greenMachineSevenStatus[self.greenMachineSevenStatus.endIndex.predecessor()] == "<"){
                self.greenMachineSevenStatus = self.greenMachineSevenStatus.substringToIndex(self.greenMachineSevenStatus.endIndex.predecessor())
            }
            else if (self.greenMachineSevenStatus[self.greenMachineSevenStatus.endIndex.predecessor()] == "p"){
                self.greenMachineSevenStatus = "not updating status"
            }
            range = myHTMLString!.startIndex.advancedBy(25713)..<myHTMLString!.startIndex.advancedBy(25722)
            self.greenMachineEight = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(25918)..<myHTMLString!.startIndex.advancedBy(25924)
            self.greenMachineEightStatus = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(27058)..<myHTMLString!.startIndex.advancedBy(27067)
            self.greenMachineNine = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(27263)..<myHTMLString!.startIndex.advancedBy(27269)
            self.greenMachineNineStatus = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(28402)..<myHTMLString!.startIndex.advancedBy(28411)
            self.greenMachineTen = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(28607)..<myHTMLString!.startIndex.advancedBy(28613)
            self.greenMachineTenStatus = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(29749)..<myHTMLString!.startIndex.advancedBy(29758)
            self.greenMachineEleven = myHTMLString![range]
            range = myHTMLString!.startIndex.advancedBy(29954)..<myHTMLString!.startIndex.advancedBy(29960)
            self.greenMachineEleven = myHTMLString![range]
            print(self.greenMachineOneStatus)
            print(self.greenMachineTwoStatus)
            print(self.greenMachineThreeStatus)
            print(self.greenMachineFourStatus)
            print(self.greenMachineFiveStatus)
            print(self.greenMachineSixStatus)
            print(self.greenMachineSevenStatus)
            print(self.greenMachineEightStatus)
            print(self.greenMachineNineStatus)
            print(self.greenMachineTenStatus)
            print(self.greenMachineElevenStatus)
            var str = self.greenMachineOneStatus[self.greenMachineOneStatus.endIndex.predecessor()] // gets last character
            //print(str)
            print(self.greenMachineOneStatus.substringToIndex(self.greenMachineOneStatus.endIndex.predecessor()))

            




            //<td width=\"15\" align=\"center\" valign=\"middle\" bgcolor=\"#fffff\">&nbsp;<td>
            let result = myHTMLString!.rangeOfString("<font size=1 face=\"Arial, Helvetica, sans-serif\">&nbsp;",
                                            options: NSStringCompareOptions.LiteralSearch,
                                            range: myHTMLString!.startIndex.advancedBy(28613)..<myHTMLString!.endIndex,
                                            locale: nil)
            if let range = result {
                print(range)
            }*/
        //}