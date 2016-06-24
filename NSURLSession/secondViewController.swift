//
//  ViewController.swift
//
//
//  Created by Ajay Jain on 6/20/2016
//  Copyright © 2016 Ajay Jain. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    //@IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        displayURL()
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
    
    func displayURL() {
        let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMPage?Login=True"
        let myURL = NSURL(string: myURLAdress)
        
        let URLTask = NSURLSession.sharedSession().dataTaskWithURL(myURL!) {
            myData, response, error in
            
            guard error == nil else { return }
            
            let myHTMLString = String(data: myData!, encoding: NSUTF8StringEncoding)
            var rangeOfTLD = myHTMLString!.startIndex.advancedBy(12346)..<myHTMLString!.startIndex.advancedBy(12348)

            rangeOfTLD = myHTMLString!.startIndex.advancedBy(30126)..<myHTMLString!.startIndex.advancedBy(30129)
            let greenWashersAvailable = myHTMLString![rangeOfTLD]
            self.greenWasherLabel.text = greenWashersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(30323)..<myHTMLString!.startIndex.advancedBy(30326)
            let greenDryersAvailable = myHTMLString![rangeOfTLD]
            self.greenDryerLabel.text = greenDryersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(32097)..<myHTMLString!.startIndex.advancedBy(32100)
            let hopkinsWashersAvailable = myHTMLString![rangeOfTLD]
            self.hopkinsWasherLabel.text = hopkinsWashersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(32294)..<myHTMLString!.startIndex.advancedBy(32297)
            let hopkinsDryersAvailable = myHTMLString![rangeOfTLD]
            self.hopkinsDryerLabel.text = hopkinsDryersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(34074)..<myHTMLString!.startIndex.advancedBy(34078)
            let isrTownsendWashersAvailable = myHTMLString![rangeOfTLD]
            self.isrTownsendWasherLabel.text = isrTownsendWashersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(34272)..<myHTMLString!.startIndex.advancedBy(34275)
            let isrTownsendDryersAvailable = myHTMLString![rangeOfTLD]
            self.isrTownsendDryerLabel.text = isrTownsendDryersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(36051)..<myHTMLString!.startIndex.advancedBy(36055)
            let isrWardallWashersAvailable = myHTMLString![rangeOfTLD]
            self.isrWardallWasherLabel.text = isrWardallWashersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(36249)..<myHTMLString!.startIndex.advancedBy(36252)
            let isrWardallDryersAvailable = myHTMLString![rangeOfTLD]
            self.isrWardallDryerLabel.text = isrWardallDryersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(38028)..<myHTMLString!.startIndex.advancedBy(38031)
            let larLeonardWashersAvailable = myHTMLString![rangeOfTLD]
            self.larLeonardWasherLabel.text = larLeonardWashersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(38225)..<myHTMLString!.startIndex.advancedBy(38228)
            let larLeonardDryersAvailable = myHTMLString![rangeOfTLD]
            self.larLeonardDryerLabel.text = larLeonardDryersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(40004)..<myHTMLString!.startIndex.advancedBy(40007)
            let larSheldenWashersAvailable = myHTMLString![rangeOfTLD]
            self.larSheldenWasherLabel.text = larSheldenWashersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(40201)..<myHTMLString!.startIndex.advancedBy(40204)
            let larSheldenDryersAvailable = myHTMLString![rangeOfTLD]
            self.larSheldenDryerLabel.text = larSheldenDryersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(41974)..<myHTMLString!.startIndex.advancedBy(41976)
            let nugentWashersAvailable = myHTMLString![rangeOfTLD]
            self.nugentWasherLabel.text = nugentWashersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(42171)..<myHTMLString!.startIndex.advancedBy(42175)
            let nugentDryersAvailable = myHTMLString![rangeOfTLD]
            self.nugentDryerLabel.text = nugentDryersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(43952)..<myHTMLString!.startIndex.advancedBy(43955)
            let nugentRoomWashersAvailable = myHTMLString![rangeOfTLD]
            self.nugentRoomWasherLabel.text = nugentRoomWashersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(44149)..<myHTMLString!.startIndex.advancedBy(44154)
            let nugentRoomDryersAvailable = myHTMLString![rangeOfTLD]
            self.nugentRoomDryerLabel.text = nugentRoomDryersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(45936)..<myHTMLString!.startIndex.advancedBy(45940)
            let orchardNorthWashersAvailable = myHTMLString![rangeOfTLD]
            self.orchardNorthWasherLabel.text = orchardNorthWashersAvailable
            rangeOfTLD = myHTMLString!.startIndex.advancedBy(46134)..<myHTMLString!.startIndex.advancedBy(46137)
            let orchardNorthDryersAvailable = myHTMLString![rangeOfTLD]
            self.orchardNorthWasherLabel.text = orchardNorthWashersAvailable
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

