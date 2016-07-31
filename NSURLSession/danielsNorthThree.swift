//
//  ViewController.swift
//
//
//  Created by Ajay Jain on 6/20/2016
//  Copyright © 2016 Ajay Jain. All rights reserved.
//

import UIKit
import AudioToolbox

class danielsNorthThree: UIViewController {
    
    
    
    
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
    
    
    @IBOutlet weak var machineElevenStatusLabel: UILabel!
    @IBOutlet weak var machineTwelveStatusLabel: UILabel!
    @IBOutlet weak var machineThirteenStatusLabel: UILabel!
    @IBOutlet weak var machineFourteenStatusLabel: UILabel!
    @IBOutlet weak var borderLabel: UILabel!
    @IBOutlet weak var elevenTimeRemaining: UILabel!
    @IBOutlet weak var twelveTimeRemaining: UILabel!
    @IBOutlet weak var thirteenTimeRemaining: UILabel!
    @IBOutlet weak var fourteenTimeRemaining: UILabel!
    
    
    
    
    var machineOne = "n/a"
    var machineTwo = "n/a"
    var machineThree = "n/a"
    var machineFour = "n/a"
    var machineFive = "n/a"
    var machineEleven = "n/a"
    var machineTwelve = "n/a"
    var machineThirteen = "n/a"
    var machineFourteen = "n/a"
    var machineFifteen = "n/a"
    var machineFifteenStatus = ""
    
    
    
    var machineOneStatus = ""
    var machineTwoStatus = ""
    var machineThreeStatus = ""
    var machineFourStatus = ""
    var machineFiveStatus = ""
    var machineElevenStatus = ""
    var machineTwelveStatus = ""
    var machineThirteenStatus = ""
    var machineFourteenStatus = ""
    
    var machineElevenAlarm = false
    var machineTwelveAlarm = false
    var machineThirteenAlarm = false
    var machineFourteenAlarm = false
    var machineFifteenAlarm = false

    
    
    var washersAvailable = ""
    var dryersAvailable = ""
    var peopleWaiting = ""
    
    var array = [String]()
    var elements = [String]()
    
    
    @IBOutlet weak var washersAvailableLabel: UILabel!
    @IBOutlet weak var dryersAvailableLabel: UILabel!
    
    
    
    /*@IBAction func bookmark(sender: AnyObject) {
     print(star.currentImage)
     if star.currentImage == "whiteStar.png"{
     if let image = UIImage(named: "yellowStar.png") {
     star.setImage(image, forState: .Normal)
     }
     }
     else{
     if let image = UIImage(named: "whiteStar.png") {
     star.setImage(image, forState: .Normal)
     }
     }
     }*/
    @IBOutlet weak var myDormButton: UIButton!
    @IBAction func writeButton(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("danielsNorth", forKey: "dorm")
        self.myDormButton.setTitle("My Dorm", forState: .Normal)
        
    }
    
    @IBAction func labelElevenPress(sender: AnyObject) {
        
        if self.machineEleven != "Available" && machineElevenStatus != "not updating status"{
            if self.machineEleven != "Available" && machineElevenStatus != "not updating status"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                machineElevenAlarm = true
            }
        }
    }
    
    @IBAction func labelTwelvePress(sender: AnyObject) {
        if self.machineTwelve != "Available" && machineTwelveStatus != "not updating status"{
            if self.machineTwelve != "Available" && machineTwelveStatus != "not updating status"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                machineTwelveAlarm = true
            }
        }
    }
    
    
    @IBAction func labelThirteenPress(sender: AnyObject) {
        if self.machineThirteen != "Available" && machineThirteenStatus != "not updating status"{
            if self.machineThirteen != "Available" && machineThirteenStatus != "not updating status"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                machineThirteenAlarm = true
            }
        }
    }
    
    @IBAction func labelFourteenPress(sender: AnyObject) {
        if self.machineFourteen != "Available" && machineFourteenStatus != "not updating status"{
            if self.machineFourteen != "Available" && machineFourteenStatus != "not updating status"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                machineElevenAlarm = true
            }
        }
    }
    
    
    
    
    
    func parse() {
        
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
                self.machineEleven = self.elements[45]
                self.machineElevenStatus = self.elements[46]
                self.machineTwelve = self.elements[49]
                self.machineTwelveStatus = self.elements[50]
                self.machineThirteen = self.elements[53]
                self.machineThirteenStatus = self.elements[54]
                self.machineFourteen = self.elements[57]
                self.machineFourteenStatus = self.elements[58]
                /*print(self.elements)
                 print(self.machineOneStatus)
                 print(self.elements[6])
                 print(self.machineTwo)
                 print(self.machineTwoStatus)*/
                dispatch_async(dispatch_get_main_queue()) {
                    self.washersAvailableLabel.text = self.washersAvailable
                    self.dryersAvailableLabel.text = self.dryersAvailable
                    self.machineElevenStatusLabel.text = self.machineEleven
                    self.machineTwelveStatusLabel.text = self.machineTwelve
                    self.machineThirteenStatusLabel.text = self.machineThirteen
                    self.machineFourteenStatusLabel.text = self.machineFourteen
                    self.elevenTimeRemaining.text = self.machineElevenStatus
                    self.twelveTimeRemaining.text = self.machineTwelveStatus
                    self.thirteenTimeRemaining.text = self.machineThirteenStatus
                    self.fourteenTimeRemaining.text = self.machineFourteenStatus
                    if self.machineEleven == "Available"{
                        self.machineElevenStatusLabel.textColor = UIColor.greenColor()
                    }
                    else{
                        self.machineElevenStatusLabel.textColor = UIColor.redColor()
                    }
                    if self.machineTwelve == "Available"{
                        self.machineTwelveStatusLabel.textColor = UIColor.greenColor()
                    }
                    else{
                        self.machineTwelveStatusLabel.textColor = UIColor.redColor()
                    }
                    
                    if self.machineThirteen == "Available"{
                        self.machineThirteenStatusLabel.textColor = UIColor.greenColor()
                    }
                    else{
                        self.machineThirteenStatusLabel.textColor = UIColor.redColor()
                    }
                    if self.machineFourteen == "Available"{
                        self.machineFourteenStatusLabel.textColor = UIColor.greenColor()
                    }
                    else{
                        self.machineFourteenStatusLabel.textColor = UIColor.redColor()
                    }
                    
                    
                    
                    
                    
                }
                
                
                
                
                
            }
            
        }
        URLTask.resume()
    }
    func alarm(){
        let notification = UILocalNotification()
        if machineElevenAlarm == true{
            if self.machineEleven == "Available"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                notification.alertBody = "Machine Eleven at Daniels North is ready"
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
                machineElevenAlarm = false
            }
            
        }
        if machineTwelveAlarm == true{
            if self.machineTwelve == "Available"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                notification.alertBody = "Machine Twelve at Daniels North is ready"
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
                machineTwelveAlarm = false
            }
            
        }
        if machineThirteenAlarm == true{
            if self.machineThirteen == "Available"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                notification.alertBody = "Machine Thirteen at Daniels North is ready"
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
                machineThirteenAlarm = false
            }
            
        }
        if machineFourteenAlarm == true{
            if self.machineFourteen == "Available"{
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                notification.alertBody = "Machine Fourteen at Daniels North is ready"
                UIApplication.sharedApplication().scheduleLocalNotification(notification)
                machineFourteenAlarm = false
            }
            
        }
        
    }

}