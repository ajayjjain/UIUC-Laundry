//
//  ViewController.swift
//
//
//  Created by Ajay Jain on 6/20/2016
//  Copyright © 2016 Ajay Jain. All rights reserved.
//

import UIKit

class orchardDownsSouth: UIViewController {
    
    
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
    var machineTwentyTwo = "n/a"
    var machineTwentyThree = "n/a"
    var machineTwentyFour = "n/a"
    var machineTwentyFive = "n/a"
    var machineTwentySix = "n/a"
    var machineTwentySeven = "n/a"
    var machineTwentyEight = "n/a"
    var machineTwentyNine = "n/a"
    var machineThirty = "n/a"
    var machineThirtyOne = "n/a"
    var machineThirtyTwo = "n/a"
    var machineThirtyThree = "n/a"
    var machineThirtyFour = "n/a"
    var machineThirtyFive = "n/a"
    var machineThirtySix = "n/a"
    var machineThirtySeven = "n/a"
    var machineThirtyEight = "n/a"
    var machineThirtyNine = "n/a"
    var machineForty = "n/a"
    var machineFortyOne = "n/a"
    var machineFortyTwo = "n/a"
    var machineFortyThree = "n/a"
    var machineFortyFour = "n/a"
    var machineFortyFive = "n/a"
    var machineFortySix = "n/a"
    var machineFortySeven = "n/a"
    var machineFortyEight = "n/a"
    var machineFortyNine = "n/a"

    
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
    var machineTwentyTwoStatus = ""
    var machineTwentyThreeStatus = ""
    var machineTwentyFourStatus = ""
    var machineTwentyFiveStatus = ""
    var machineTwentySixStatus = ""
    var machineTwentySevenStatus = ""
    var machineTwentyEightStatus = ""
    var machineTwentyNineStatus = ""
    var machineThirtyStatus = ""
    var machineThirtyOneStatus = ""
    var machineThirtyTwoStatus = ""
    var machineThirtyThreeStatus = ""
    var machineThirtyFourStatus = ""
    var machineThirtyFiveStatus = ""
    var machineThirtySixStatus = ""
    var machineThirtySevenStatus = ""
    var machineThirtyEightStatus = ""
    var machineThirtyNineStatus = ""
    var machineFortyStatus = ""
    var machineFortyOneStatus = ""
    var machineFortyTwoStatus = ""
    var machineFortyThreeStatus = ""
    var machineFortyFourStatus = ""
    var machineFortyFiveStatus = ""
    var machineFortySixStatus = ""
    var machineFortySevenStatus = ""
    var machineFortyEightStatus = ""
    var machineFortyNineStatus = ""
    
    var washersAvailable = ""
    var dryersAvailable = ""
    var peopleWaiting = ""
    
    var array = [String]()
    var elements = [String]()
    
    @IBOutlet var button: UIButton!
    
    
    
    func parse() {
        let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?XallingPage=LMPage&Halls=18&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
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
                self.machineSixteenStatus = self.elements[66]
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
                self.machineTwentyTwo = self.elements[89]
                self.machineTwentyTwoStatus = self.elements[90]
                self.machineTwentyThree = self.elements[93]
                self.machineTwentyThreeStatus = self.elements[94]
                self.machineTwentyFour = self.elements[97]
                self.machineTwentyFourStatus = self.elements[98]
                self.machineTwentyFive = self.elements[101]
                self.machineTwentyFiveStatus = self.elements[102]
                self.machineTwentySix = self.elements[105]
                self.machineTwentySixStatus = self.elements[106]
                self.machineTwentySeven = self.elements[109]
                self.machineTwentySevenStatus = self.elements[110]
                self.machineTwentyEight = self.elements[113]
                self.machineTwentyEightStatus = self.elements[114]
                self.machineTwentyNine = self.elements[117]
                self.machineTwentyNineStatus = self.elements[118]
                self.machineThirty = self.elements[121]
                self.machineThirtyStatus = self.elements[122]
                self.machineThirtyOne = self.elements[125]
                self.machineThirtyOneStatus = self.elements[126]
                self.machineThirtyTwo = self.elements[129]
                self.machineThirtyTwoStatus = self.elements[130]
                self.machineThirtyThree = self.elements[133]
                self.machineThirtyThreeStatus = self.elements[134]
                self.machineThirtyFour = self.elements[137]
                self.machineThirtyFourStatus = self.elements[138]
                self.machineThirtyFive = self.elements[141]
                self.machineThirtyFiveStatus = self.elements[142]
                self.machineThirtySix = self.elements[145]
                self.machineThirtySixStatus = self.elements[146]
                self.machineThirtySeven = self.elements[149]
                self.machineThirtySevenStatus = self.elements[150]
                self.machineThirtyEight = self.elements[153]
                self.machineThirtyEightStatus = self.elements[154]
                self.machineThirtyNine = self.elements[157]
                self.machineThirtyNineStatus = self.elements[158]
                self.machineForty = self.elements[161]
                self.machineFortyStatus = self.elements[162]
                self.machineFortyOne = self.elements[165]
                self.machineFortyOneStatus = self.elements[166]
                self.machineFortyTwo = self.elements[169]
                self.machineFortyTwoStatus = self.elements[170]
                self.machineFortyThree = self.elements[173]
                self.machineFortyThreeStatus = self.elements[174]
                self.machineFortyFour = self.elements[177]
                self.machineFortyFourStatus = self.elements[178]
                self.machineFortyFive = self.elements[181]
                self.machineFortyFiveStatus = self.elements[182]
                self.machineFortySix = self.elements[185]
                self.machineFortySixStatus = self.elements[186]
                self.machineFortySeven = self.elements[189]
                self.machineFortySevenStatus = self.elements[190]
                self.machineFortyEight = self.elements[193]
                self.machineFortyEightStatus = self.elements[194]
                self.machineFortyNine = self.elements[197]
                self.machineFortyNineStatus = self.elements[198]
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
                print(self.machineTwentyTwo)
                print(self.machineTwentyTwoStatus)
                print(self.machineTwentyThree)
                print(self.machineTwentyThreeStatus)
                print(self.machineTwentyFour)
                print(self.machineTwentyFourStatus)
                print(self.machineTwentyFive)
                print(self.machineTwentyFiveStatus)
                print(self.machineTwentySix)
                print(self.machineTwentySixStatus)
                print(self.machineTwentySeven)
                print(self.machineTwentySevenStatus)
                print(self.machineTwentyEight)
                print(self.machineTwentyEightStatus)
                print(self.machineTwentyNine)
                print(self.machineTwentyNineStatus)
                print(self.machineThirty)
                print(self.machineThirtyStatus)
                print(self.machineThirtyOne)
                print(self.machineThirtyOneStatus)
                print(self.machineThirtyTwo)
                print(self.machineThirtyTwoStatus)
                print(self.machineThirtyThree)
                print(self.machineThirtyThreeStatus)
                print(self.machineThirtyFour)
                print(self.machineThirtyFourStatus)
                print(self.machineThirtyFive)
                print(self.machineThirtyFiveStatus)
                print(self.machineThirtySix)
                print(self.machineThirtySixStatus)
                print(self.machineThirtySeven)
                print(self.machineThirtySevenStatus)
                print(self.machineThirtyEight)
                print(self.machineThirtyEightStatus)
                print(self.machineThirtyNine)
                print(self.machineThirtyNineStatus)
                print(self.machineFortyOne)
                print(self.machineFortyOneStatus)
                print(self.machineFortyTwo)
                print(self.machineFortyTwoStatus)
                print(self.machineFortyThree)
                print(self.machineFortyThreeStatus)
                print(self.machineFortyFour)
                print(self.machineFortyFourStatus)
                print(self.machineFortyFive)
                print(self.machineFortyFiveStatus)
                print(self.machineFortySix)
                print(self.machineFortySixStatus)
                print(self.machineFortySeven)
                print(self.machineFortySevenStatus)
                print(self.machineFortyEight)
                print(self.machineFortyEightStatus)
                print(self.machineFortyNine)
                print(self.machineFortyNineStatus)
                
                //print(str)
                //self.button.setTitle(str, forState: .Normal)
                
            }
            
        }
        URLTask.resume()
    }
}