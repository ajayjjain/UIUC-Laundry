//
//  ViewController.swift
//
//
//  Created by Ajay Jain on 6/20/2016
//  Copyright © 2016 Ajay Jain. All rights reserved.
//

import UIKit
import AudioToolbox

class danielsNorth: UIViewController {
    
    
    
    
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
        borderLabel.layer.borderColor = UIColor.orangeColor().CGColor
        borderLabel.layer.borderWidth = 2.0;
        /*let stringKey = NSUserDefaults.standardUserDefaults()
         var bookmark = stringKey.stringForKey("bookmark")*/
        let myTimer = NSTimer(timeInterval: 30.0, target: self, selector: "parse", userInfo: nil, repeats: true)
        NSRunLoop.mainRunLoop().addTimer(myTimer, forMode: NSDefaultRunLoopMode)
        let alarmTimer = NSTimer(timeInterval: 30.0, target: self, selector: "alarm", userInfo: nil, repeats: true)
        NSRunLoop.mainRunLoop().addTimer(alarmTimer, forMode: NSDefaultRunLoopMode)

        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        let defaults = NSUserDefaults.standardUserDefaults()
        if let name = defaults.stringForKey("dorm") {
            if name == "danielsNorth"{
                self.myDormButton.setTitle("My Dorm", forState: .Normal)
            }
            else{
                self.myDormButton.setTitle("Set As My Dorm", forState: .Normal)
                
            }
        }
    }
    
    /* @IBAction func setDorm(sender: AnyObject) {
     let defaults = NSUserDefaults.standardUserDefaults()
     defaults.setObject("parBlaisdell", forKey: "dorm")
     }*/
    @IBOutlet weak var machineOneStatusLabel: UILabel!
    @IBOutlet weak var machineTwoStatusLabel: UILabel!
    @IBOutlet weak var machineThreeStatusLabel: UILabel!
    @IBOutlet weak var machineFourStatusLabel: UILabel!
    @IBOutlet weak var machineFiveStatusLabel: UILabel!
    @IBOutlet weak var borderLabel: UILabel!
    @IBOutlet weak var oneTimeRemaining: UILabel!
    @IBOutlet weak var twoTimeRemaining: UILabel!
    @IBOutlet weak var threeTimeRemaining: UILabel!
    @IBOutlet weak var fourTimeRemaining: UILabel!
    @IBOutlet weak var fiveTimeRemaining: UILabel!
    
    
    
    
    var machineOne = "n/a"
    var machineTwo = "n/a"
    var machineThree = "n/a"
    var machineFour = "n/a"
    var machineFive = "n/a"
    var machineSix = "n/a"
    var machineSeven = "n/a"
    var machineEight = "n/a"
    var machineNine = "n/a"
    
    
    var machineOneStatus = ""
    var machineTwoStatus = ""
    var machineThreeStatus = ""
    var machineFourStatus = ""
    var machineFiveStatus = ""
    var machineSixStatus = ""
    var machineSevenStatus = ""
    var machineEightStatus = ""
    var machineNineStatus = ""
    
    var machineOneAlarm = false
    var machineTwoAlarm = false
    var machineThreeAlarm = false
    var machineFourAlarm = false
    var machineFiveAlarm = false

    
    var washersAvailable = ""
    var dryersAvailable = ""
    var peopleWaiting = ""
    
    var array = [String]()
    var elements = [String]()
    
    
    @IBOutlet weak var washersAvailableLabel: UILabel!
    @IBOutlet weak var dryersAvailableLabel: UILabel!
    
    
    
    
    @IBOutlet weak var myDormButton: UIButton!
    @IBAction func writeButton(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("danielsNorth", forKey: "dorm")
        self.myDormButton.setTitle("My Dorm", forState: .Normal)
        
    }
    
    @IBAction func labelOnePress(sender: AnyObject) {
        if self.machineOne != "Available" && machineOneStatus != "not updating status"{
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            machineOneAlarm = true
        }
    }
    
    @IBAction func labelTwoPress(sender: AnyObject) {
        if self.machineTwo != "Available" && machineTwoStatus != "not updating status"{
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            machineTwoAlarm = true
        }
    }
    
    
    @IBAction func labelThreePress(sender: AnyObject) {
        if self.machineThree != "Available" && machineThreeStatus != "not updating status"{
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            machineThreeAlarm = true
        }
    }
    
    @IBAction func labelFourPress(sender: AnyObject) {
        if self.machineFour != "Available" && machineFourStatus != "not updating status"{
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            machineFourAlarm = true
        }
    }
    
    
    @IBAction func labelFivePress(sender: AnyObject) {
        if self.machineFive != "Available" && machineFiveStatus != "not updating status"{
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            machineFiveAlarm = true
        }
    }
    
    
    func parse() {
        array = [String]()
        elements = [String]()
        let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?CallingPage=LMPage&Halls=4&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
        //let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMRoom?CallingPage=LMPage&Halls=5&PreviousHalls=&RoomPersistence=&MachinePersistenceA=&MachinePersistenceB="
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
                        if self.array[n] == "In UseAdditional Time" && self.array[n-1] != "In UseAdditional Time" || self.array[n] == "In Use2nd Add\'l Time" && self.array[n-1] != "In Use2nd Add\'l Time" {
                            self.elements.append("In Use")
                            self.elements.append(self.array[n+3])
                            n = n + 2
                        }
                        else if self.array[n] == "In Use3rd Add\'l Time" && self.array[n-1] != "In Use3rd Add\'l Time"{
                            self.elements.append("In Use")
                            self.elements.append(self.array[n+3])
                            n = n + 2
                        }
                        else if self.array[n] == "In Use" && self.array[n-1] != "In Use"{
                            if self.array[n+2] != "unknown"{
                                self.elements.append(self.array[n])
                                self.elements.append(self.array[n+2])
                            }
                            else{
                                self.elements.append(self.array[n])
                                self.elements.append("unknown")
                            }
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
                print(self.machineFour)
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
                /*print(self.elements)
                 print(self.machineOneStatus)
                 print(self.elements[6])
                 print(self.machineTwo)
                 print(self.machineTwoStatus)*/
                dispatch_async(dispatch_get_main_queue()) {
                    self.washersAvailableLabel.text = self.washersAvailable
                    self.dryersAvailableLabel.text = self.dryersAvailable
                    self.machineOneStatusLabel.text = self.machineOne
                    self.machineTwoStatusLabel.text = self.machineTwo
                    self.machineThreeStatusLabel.text = self.machineThree
                    self.machineFourStatusLabel.text = self.machineFour
                    self.machineFiveStatusLabel.text = self.machineFive
                    self.oneTimeRemaining.text = self.machineOneStatus
                    self.twoTimeRemaining.text = self.machineTwoStatus
                    self.threeTimeRemaining.text = self.machineThreeStatus
                    self.fourTimeRemaining.text = self.machineFourStatus
                    self.fiveTimeRemaining.text = self.machineFiveStatus
                    if self.machineOne == "Available"{
                        self.machineOneStatusLabel.textColor = UIColor.greenColor()
                    }
                    else{
                        self.machineOneStatusLabel.textColor = UIColor.redColor()
                    }
                    if self.machineTwo == "Available"{
                        self.machineTwoStatusLabel.textColor = UIColor.greenColor()
                    }
                    else{
                        self.machineTwoStatusLabel.textColor = UIColor.redColor()
                    }
                    
                    if self.machineThree == "Available"{
                        self.machineThreeStatusLabel.textColor = UIColor.greenColor()
                    }
                    else{
                        self.machineThreeStatusLabel.textColor = UIColor.redColor()
                    }
                    if self.machineFour == "Available"{
                        self.machineFourStatusLabel.textColor = UIColor.greenColor()
                    }
                    else{
                        self.machineFourStatusLabel.textColor = UIColor.redColor()
                    }
                    
                    if self.machineFive == "Available"{
                        self.machineFiveStatusLabel.textColor = UIColor.greenColor()
                    }
                    else{
                        self.machineFiveStatusLabel.textColor = UIColor.redColor()
                    }
                    
                    
                    
                    
                }
                
                
                
                
                
            }
            
        }
        URLTask.resume()
    }
    func alarm(){
        let notification = UILocalNotification()
        if machineOneAlarm == true{
            if self.machineOne == "Available"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                notification.alertBody = "Machine One at Daniels North is ready"
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
                machineOneAlarm = false
            }
            
        }
        if machineTwoAlarm == true{
            if self.machineTwo == "Available"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                notification.alertBody = "Machine Two at Daniels North is ready"
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
                machineTwoAlarm = false
            }
            
        }
        if machineThreeAlarm == true{
            if self.machineThree == "Available"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                notification.alertBody = "Machine Three at Daniels North is ready"
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
                machineThreeAlarm = false
            }
            
        }
        if machineFourAlarm == true{
            if self.machineFour == "Available"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                notification.alertBody = "Machine Four at Daniels North is ready"
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
                machineFourAlarm = false
            }
            
        }
        if machineFiveAlarm == true{
            if self.machineFive == "Available"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                notification.alertBody = "Machine Five at Daniels North is ready"
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
                machineFiveAlarm = false
            }
            
        }
        
    }

}