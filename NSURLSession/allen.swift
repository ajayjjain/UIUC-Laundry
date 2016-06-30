//
//  ViewController.swift
//
//
//  Created by Ajay Jain on 6/20/2016
//  Copyright © 2016 Ajay Jain. All rights reserved.
//

import UIKit

class allen: UIViewController {
    
    
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
        parse()
    }
    
    
    
    
    
    var machineOne = "n/a"
    var machineTwo = "n/a"
    var machineThree = "n/a"
    var machineFour = "n/a"
    var machineFive = "n/a"
    var machineSix = "n/a"
    var machineSeven = "n/a"
    var machineEight = "n/a"
    var machineNine = "n/a"
    var machineTen = "n/a"
    var machineEleven = "n/a"
    var machineTwelve = "n/a"
    var machineThirteen = "n/a"
    var machineFourteen = "n/a"
    var machineFifteen = "n/a"
    var machineSixteen = "n/a"
    var machineSeventeen = "n/a"
    var machineEighteen = "n/a"
    var machineNineteen = "n/a"
    var machineTwenty = "n/a"
    var machineTwentyOne = "n/a"

    
    
    var machineOneStatus = ""
    var machineTwoStatus = ""
    var machineThreeStatus = ""
    var machineFourStatus = ""
    var machineFiveStatus = ""
    var machineSixStatus = ""
    var machineSevenStatus = ""
    var machineEightStatus = ""
    var machineNineStatus = ""
    var machineTenStatus = ""
    var machineElevenStatus = ""
    var machineTwelveStatus = ""
    var machineThirteenStatus = ""
    var machineFourteenStatus = ""
    var machineFifteenStatus = ""
    var machineSixteenStatus = ""
    var machineSeventeenStatus = ""
    var machineEighteenStatus = ""
    var machineNineteenStatus = ""
    var machineTwentyStatus = ""
    var machineTwentyOneStatus = ""

    
    var washersAvailable = ""
    var dryersAvailable = ""
    var peopleWaiting = ""
    
    var array = [String]()
    var elements = [String]()
    
    @IBOutlet var button: UIButton!
    
    
    
    func parse() {
        let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?CallingPage=LMPage&Halls=0&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
        //bousfield let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?CallingPage=LMPage&Halls=2&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
        //let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?CallingPage=LMPage&Halls=13&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
        let myURL = NSURL(string: myURLAdress)
        
        let URLTask = NSURLSession.sharedSession().dataTaskWithURL(myURL!) {
            myData, response, error in
            
            guard error == nil else { return }
            
            let myHTMLString = String(data: myData!, encoding: NSUTF8StringEncoding)
            let html = myHTMLString
            
            if let doc = HTML(html: html!, encoding: NSUTF8StringEncoding) {
                for link in doc.css("font") {  // font, face
                    if (link.text != nil){
                        var tempString = link.text!
                        var newString = tempString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()
                        )
                        self.array.append(newString)
                    }
                }
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
                
                self.washersAvailable = self.elements[0]
                self.dryersAvailable = self.elements[1]
                self.peopleWaiting = self.elements[2]
                self.machineOne = self.elements[5]
                self.machineOneStatus = self.elements[6]
                self.machineTwo = self.elements[9]
                self.machineTwoStatus = self.elements[10]
                self.machineThree = self.elements[13]
                self.machineThreeStatus = self.elements[14]
                self.machineFour = self.elements[17]
                self.machineFourStatus = self.elements[18]
                self.machineFive = self.elements[21]
                self.machineFiveStatus = self.elements[22]
                self.machineSix = self.elements[25]
                self.machineSixStatus = self.elements[26]
                self.machineSeven = self.elements[29]
                self.machineSevenStatus = self.elements[30]
                self.machineEight = self.elements[33]
                self.machineEightStatus = self.elements[34]
                self.machineNine = self.elements[37]
                self.machineNineStatus = self.elements[38]
                self.machineTen = self.elements[41]
                self.machineTenStatus = self.elements[42]
                self.machineEleven = self.elements[45]
                self.machineElevenStatus = self.elements[46]
                self.machineTwelve = self.elements[49]
                self.machineTwelveStatus = self.elements[50]
                self.machineThirteen = self.elements[53]
                self.machineThirteenStatus = self.elements[54]
                self.machineFourteen = self.elements[57]
                self.machineFourteenStatus = self.elements[58]
                self.machineFifteen = self.elements[61]
                self.machineFifteenStatus = self.elements[62]
                self.machineSixteen = self.elements[65]
                self.machineSixStatus = self.elements[66]
                self.machineSeventeen = self.elements[69]
                self.machineSeventeenStatus = self.elements[70]
                self.machineEighteen = self.elements[73]
                self.machineEighteenStatus = self.elements[74]
                self.machineNineteen = self.elements[77]
                self.machineNineteenStatus = self.elements[78]
                self.machineTwenty = self.elements[81]
                self.machineTwentyStatus = self.elements[82]
                self.machineTwentyOne = self.elements[85]
                self.machineTwentyOneStatus = self.elements[86]

                print(self.machineOne)
                print(self.machineOneStatus)
                print(self.machineTwo)
                print(self.machineTwoStatus)
                print(self.machineThree)
                print(self.machineThreeStatus)
                print(self.machineFour)
                print(self.machineFourStatus)
                print(self.machineFive)
                print(self.machineFiveStatus)
                print(self.machineSix)
                print(self.machineSixStatus)
                print(self.machineSeven)
                print(self.machineSevenStatus)
                print(self.machineEight)
                print(self.machineEightStatus)
                print(self.machineNine)
                print(self.machineNineStatus)
                print(self.machineTen)
                print(self.machineTenStatus)
                print(self.machineEleven)
                print(self.machineElevenStatus)
                print(self.machineTwelve)
                print(self.machineTwelveStatus)
                print(self.machineThirteen)
                print(self.machineThirteenStatus)
                print(self.machineFourteen)
                print(self.machineFourteenStatus)
                print(self.machineFifteen)
                print(self.machineFifteenStatus)
                print(self.machineSixteen)
                print(self.machineSixteenStatus)
                print(self.machineSeventeen)
                print(self.machineSeventeenStatus)
                print(self.machineEighteen)
                print(self.machineEighteenStatus)
                print(self.machineNineteen)
                print(self.machineNineteenStatus)
                print(self.machineTwenty)
                print(self.machineTwentyStatus)
                print(self.machineTwentyOne)
                print(self.machineTwentyOneStatus)

                
                //print(str)
                //self.button.setTitle(str, forState: .Normal)
                
            }
            
        }
        URLTask.resume()
    }
}