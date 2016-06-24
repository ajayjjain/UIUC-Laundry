//
//  ViewController.swift
//
//
//  Created by Ajay Jain on 6/20/2016
//  Copyright © 2016 Ajay Jain. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    var greenAvailable = "1"
    var greenDryersAvailable = "0"
    var hopkinsWashersAvailable = "0"
    var hopkinsDryersAvailable = "0"
    var isrTownsendWashersAvailable = "0"
    var isrTownsendDryersAvailable = "0"
    var isrWardallWashersAvailable = "0"
    var isrWardallDryersAvailable = "0"
    var larLeonardWashersAvailable = "0"
    var larLeonardDryersAvailable = "0"
    var larSheldenWashersAvailable = "0"
    var larSheldenDryersAvailable = "0"
    var nugentWashersAvailable = "0"
    var nugentDryersAvailable = "0"
    var nugentRoomWashersAvailable = "0"
    var nugentRoomDryersAvailable = "0"
    var orchardNorthWashersAvailable = "0"
    var orchardNorthDryersAvailable = "0"
    //@IBOutlet weak var myWebView: UIWebView!
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
        self.navigationController!.navigationBar.barTintColor = illiniBlue
        self.view.backgroundColor = grayColor
        
        self.greenWasherLabel.text = greenAvailable
        self.greenDryerLabel.text = greenDryersAvailable
        self.hopkinsWasherLabel.text = hopkinsWashersAvailable
        self.hopkinsDryerLabel.text = hopkinsDryersAvailable
        self.isrTownsendWasherLabel.text = isrTownsendWashersAvailable
        self.isrTownsendDryerLabel.text = isrTownsendDryersAvailable
        self.isrWardallWasherLabel.text = isrWardallWashersAvailable
        self.isrWardallDryerLabel.text = isrWardallDryersAvailable
        self.larLeonardWasherLabel.text = larLeonardWashersAvailable
        self.larLeonardDryerLabel.text = larLeonardDryersAvailable
        self.larSheldenWasherLabel.text = larSheldenWashersAvailable
        self.larSheldenDryerLabel.text = larSheldenDryersAvailable
        self.nugentWasherLabel.text = nugentWashersAvailable
        self.nugentDryerLabel.text = nugentDryersAvailable
        self.nugentRoomWasherLabel.text = nugentRoomWashersAvailable
        self.nugentRoomDryerLabel.text = nugentRoomDryersAvailable
        self.orchardNorthWasherLabel.text = orchardNorthWashersAvailable
        self.orchardNorthDryerLabel.text = orchardNorthDryersAvailable
        //displayURL()
    }
    @IBAction func clickButton(sender: AnyObject) {
        self.navigationController!.popViewControllerAnimated(true)
    }
    
    @IBOutlet weak var greenWasherLabel: UILabel!
    @IBOutlet weak var greenDryerLabel: UILabel!
    @IBOutlet weak var hopkinsWasherLabel: UILabel!
    @IBOutlet weak var hopkinsDryerLabel: UILabel!
    @IBOutlet weak var isrTownsendWasherLabel: UILabel!
    @IBOutlet weak var isrTownsendDryerLabel: UILabel!
    @IBOutlet weak var isrWardallWasherLabel: UILabel!
    @IBOutlet weak var isrWardallDryerLabel: UILabel!
    @IBOutlet weak var larLeonardWasherLabel: UILabel!
    @IBOutlet weak var larLeonardDryerLabel: UILabel!
    @IBOutlet weak var larSheldenWasherLabel: UILabel!
    @IBOutlet weak var larSheldenDryerLabel: UILabel!
    @IBOutlet weak var nugentWasherLabel: UILabel!
    @IBOutlet weak var nugentDryerLabel: UILabel!
    @IBOutlet weak var nugentRoomWasherLabel: UILabel!
    @IBOutlet weak var nugentRoomDryerLabel: UILabel!
    @IBOutlet weak var orchardNorthWasherLabel: UILabel!
    @IBOutlet weak var orchardNorthDryerLabel: UILabel!
    var greenWashersAvailable = "hey"
    











    
    func displayURL() {
        let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMPage?Login=True"
        let myURL = NSURL(string: myURLAdress)
        
        let URLTask = NSURLSession.sharedSession().dataTaskWithURL(myURL!) {
            myData, response, error in
            
            guard error == nil else { return }
            
            let myHTMLString = String(data: myData!, encoding: NSUTF8StringEncoding)
            var rangeOfTLD = myHTMLString!.startIndex.advancedBy(12346)..<myHTMLString!.startIndex.advancedBy(12348)

            
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(47920)..<myHTMLString!.startIndex.advancedBy(47924)
            let orchardSouthWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(48118)..<myHTMLString!.startIndex.advancedBy(48122)
            let orchardSouthDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(49899)..<myHTMLString!.startIndex.advancedBy(49902)
            let parBabcockWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(50096)..<myHTMLString!.startIndex.advancedBy(50099)
            let parBabcockDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(51877)..<myHTMLString!.startIndex.advancedBy(51880)
            let parBlaisdellWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(52074)..<myHTMLString!.startIndex.advancedBy(52077)
            let parBlaisdellDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(53850)..<myHTMLString!.startIndex.advancedBy(53853)
            let parCarrWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(54047)..<myHTMLString!.startIndex.advancedBy(54050)
            let parCarrDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(55826)..<myHTMLString!.startIndex.advancedBy(55829)
            let parSaundersWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(56023)..<myHTMLString!.startIndex.advancedBy(56026)
            let parSaundersDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(57795)..<myHTMLString!.startIndex.advancedBy(57798)
            let scottWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(57992)..<myHTMLString!.startIndex.advancedBy(57995)
            let scottDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(59772)..<myHTMLString!.startIndex.advancedBy(59775)
            let shermanShortWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(59969)..<myHTMLString!.startIndex.advancedBy(59972)
            let shermanShortDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(61748)..<myHTMLString!.startIndex.advancedBy(61751)
            let shermanTallWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(61945)..<myHTMLString!.startIndex.advancedBy(61948)
            let shermanTallDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(63718)..<myHTMLString!.startIndex.advancedBy(63721)
            let snyderWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(63915)..<myHTMLString!.startIndex.advancedBy(63919)
            let snyderDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(65692)..<myHTMLString!.startIndex.advancedBy(65695)
            let tvdTaftWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(65889)..<myHTMLString!.startIndex.advancedBy(65892)
            let tvdTaftDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(67670)..<myHTMLString!.startIndex.advancedBy(67673)
            let tvdVanDorenWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(67867)..<myHTMLString!.startIndex.advancedBy(67870)
            let tvdVanDorenDryersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(69639)..<myHTMLString!.startIndex.advancedBy(69642)
            let westonWashersAvailable = myHTMLString![rangeOfTLD]
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(69836)..<myHTMLString!.startIndex.advancedBy(69841)
            let westonDryersAvailable = myHTMLString![rangeOfTLD]            
 
            
            
            
        }
        URLTask.resume()
    }
}

