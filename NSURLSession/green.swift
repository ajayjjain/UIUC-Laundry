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
    
    var washersAvailable = ""
    var dryersAvailable = ""
    var peopleWaiting = ""

    var array = [String]()
    var elements = [String]()
    
    @IBOutlet var button: UIButton!














    
    

    
    
    
    func greenParse() {
        myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?XallingPage=LMPage&Halls=9&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
        //bousfield let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?CallingPage=LMPage&Halls=2&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
        //larLen let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?CallingPage=LMPage&Halls=13&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
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
                //print(self.elements)
                self.washersAvailable = self.elements[0]
                self.dryersAvailable = self.elements[1]
                self.peopleWaiting = self.elements[2]
                self.greenMachineOne = self.elements[5]
                self.greenMachineOneStatus = self.elements[6]
                self.greenMachineTwo = self.elements[9]
                self.greenMachineTwoStatus = self.elements[10]
                self.greenMachineThree = self.elements[13]
                self.greenMachineThreeStatus = self.elements[14]
                self.greenMachineFour = self.elements[17]
                self.greenMachineFourStatus = self.elements[18]
                self.greenMachineFive = self.elements[21]
                self.greenMachineFiveStatus = self.elements[22]
                self.greenMachineSix = self.elements[25]
                self.greenMachineSixStatus = self.elements[26]
                self.greenMachineSeven = self.elements[29]
                self.greenMachineSevenStatus = self.elements[30]
                self.greenMachineEight = self.elements[33]
                self.greenMachineEightStatus = self.elements[34]
                self.greenMachineNine = self.elements[37]
                self.greenMachineNineStatus = self.elements[38]
                self.greenMachineTen = self.elements[41]
                self.greenMachineTenStatus = self.elements[42]
                self.greenMachineEleven = self.elements[45]
                self.greenMachineElevenStatus = self.elements[46]
               

                //print(str)
                //self.button.setTitle(str, forState: .Normal)

            }
            
        }
        URLTask.resume()
    }
}