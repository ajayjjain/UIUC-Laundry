//
//  ViewController.swift
//
//
//  Created by Ajay Jain on 6/20/2016
//  Copyright © 2016 Ajay Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var allen: UIImageView!
    @IBOutlet weak var barton: UIImageView!
    @IBOutlet weak var bousfield: UIImageView!
    @IBOutlet weak var busey: UIImageView!
    @IBOutlet weak var danielsNorth: UIImageView!
    @IBOutlet weak var danielsSouth: UIImageView!
    @IBOutlet weak var farOglesby: UIImageView!
    @IBOutlet weak var farTrelease: UIImageView!
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
    allen.layer.cornerRadius = 8.0
    allen.clipsToBounds = true
    barton.layer.cornerRadius = 8.0
    barton.clipsToBounds = true
    bousfield.layer.cornerRadius = 8.0
    bousfield.clipsToBounds = true
    busey.layer.cornerRadius = 8.0
    busey.clipsToBounds = true
    danielsNorth.layer.cornerRadius = 8.0
    danielsNorth.clipsToBounds = true
    danielsSouth.layer.cornerRadius = 8.0
    danielsSouth.clipsToBounds = true
    farOglesby.layer.cornerRadius = 8.0
    farOglesby.clipsToBounds = true
    farTrelease.layer.cornerRadius = 8.0
    farTrelease.clipsToBounds = true
    goodwin.layer.cornerRadius = 8.0
    goodwin.clipsToBounds = true

    let image : UIImage = UIImage(named: "logo1.jpg")!
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    imageView.contentMode = .ScaleAspectFit
    imageView.image = image
    self.navigationItem.titleView = imageView
    displayURL()
   }
    
  var greenWashersAvailable = "0"
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
  var orchardSouthWashersAvailable = "0"
  var orchardSouthDryersAvailable = "0"
  var parBabcockWashersAvailable = "0"
  var parBabcockDryersAvailable = "0"
  var parBlaisdellWashersAvailable = "0"
  var parBlaisdellDryersAvailable = "0"
  var parCarrWashersAvailable = "0"
  var parCarrDryersAvailable = "0"
  var parSaundersWashersAvailable = "0"
  var parSaundersDryersAvailable = "0"
  var scottWashersAvailable = "0"
  var scottDryersAvailable = "0"
  var shermanShortWashersAvailable = "0"
  var shermanShortDryersAvailable = "0"
  var shermanTallWashersAvailable = "0"
  var shermanTallDryersAvailable = "0"
  var snyderWashersAvailable = "0"
  var snyderDryersAvailable = "0"
  var tvdTaftWashersAvailable = "0"
  var tvdTaftDryersAvailable = "0"
  var tvdVanDorenWashersAvailable = "0"
  var tvdVanDorenDryersAvailable = "0"
  var westonWashersAvailable = "0"
  var westonDryersAvailable = "0"
    
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
      if segue.identifier == "nextScreen"{
          let vc = segue.destinationViewController as! secondViewController
          vc.greenAvailable = self.greenWashersAvailable
          vc.greenDryersAvailable = self.greenDryersAvailable
          vc.hopkinsWashersAvailable = self.hopkinsWashersAvailable
          vc.hopkinsDryersAvailable = self.hopkinsDryersAvailable
          vc.isrTownsendWashersAvailable = self.isrTownsendWashersAvailable
          vc.isrTownsendDryersAvailable = self.isrTownsendDryersAvailable
          vc.isrWardallWashersAvailable = self.isrWardallWashersAvailable
          vc.isrWardallDryersAvailable = self.isrWardallDryersAvailable
          vc.larLeonardWashersAvailable = self.larLeonardWashersAvailable
          vc.larLeonardDryersAvailable = self.larLeonardDryersAvailable
          vc.larSheldenWashersAvailable = self.larSheldenWashersAvailable
          vc.larSheldenDryersAvailable = self.larSheldenDryersAvailable
          vc.nugentWashersAvailable = self.nugentWashersAvailable
          vc.nugentDryersAvailable = self.nugentDryersAvailable
          vc.nugentRoomWashersAvailable = self.nugentRoomWashersAvailable
          vc.nugentRoomDryersAvailable = self.nugentRoomDryersAvailable
          vc.orchardNorthWashersAvailable = self.orchardNorthWashersAvailable
          vc.orchardNorthDryersAvailable = self.orchardNorthDryersAvailable
          vc.orchardSouthWashersAvailable = self.orchardSouthWashersAvailable
          vc.orchardSouthDryersAvailable = self.orchardSouthDryersAvailable
          vc.parBabcockWashersAvailable = self.parBabcockWashersAvailable
          vc.parBabcockDryersAvailable = self.parBabcockDryersAvailable
          vc.parBlaisdellWashersAvailable = self.parBlaisdellWashersAvailable
          vc.parBlaisdellDryersAvailable = self.parBlaisdellDryersAvailable
          vc.parCarrWashersAvailable = self.parCarrWashersAvailable
          vc.parCarrDryersAvailable = self.parCarrDryersAvailable
          vc.parSaundersWashersAvailable = self.parSaundersWashersAvailable
          vc.parSaundersDryersAvailable = self.parSaundersDryersAvailable
          vc.scottWashersAvailable = self.scottWashersAvailable
          vc.scottDryersAvailable = self.scottDryersAvailable
          vc.shermanShortWashersAvailable = self.shermanShortWashersAvailable
          vc.shermanShortDryersAvailable = self.shermanShortDryersAvailable
          vc.shermanTallWashersAvailable = self.shermanTallWashersAvailable
          vc.shermanTallDryersAvailable = self.shermanTallDryersAvailable
          vc.snyderWashersAvailable = self.snyderWashersAvailable
          vc.snyderDryersAvailable = self.snyderDryersAvailable
          vc.tvdTaftWashersAvailable = self.tvdTaftWashersAvailable
          vc.tvdTaftDryersAvailable = self.tvdTaftDryersAvailable
          vc.tvdVanDorenWashersAvailable = self.tvdVanDorenWashersAvailable
          vc.tvdVanDorenDryersAvailable = self.tvdVanDorenDryersAvailable
          vc.westonWashersAvailable = self.westonWashersAvailable
          vc.westonDryersAvailable = self.westonDryersAvailable
      }
  }
    
    
    @IBAction func clickButton(sender: AnyObject) {
        self.navigationController!.popViewControllerAnimated(true)
    }
    @IBOutlet weak var allenWasherLabel: UILabel!
    @IBOutlet weak var allenDryerLabel: UILabel!
  
    @IBOutlet weak var bartonWasherLabel: UILabel!
    @IBOutlet weak var bartonDryerLabel: UILabel!
    @IBOutlet weak var bousfieldWasherLabel: UILabel!
    @IBOutlet weak var bousfieldDryerLabel: UILabel!
    @IBOutlet weak var buseyWasherLabel: UILabel!
    @IBOutlet weak var buseyDryerLabel: UILabel!
    @IBOutlet weak var danielsNorthWasherLabel: UILabel!
    @IBOutlet weak var danielsNorthDryerLabel: UILabel!
    @IBOutlet weak var danielsSouthWasherLabel: UILabel!
    @IBOutlet weak var danielsSouthDryerLabel: UILabel!
    @IBOutlet weak var farOglesbyWasherLabel: UILabel!
    @IBOutlet weak var farOglesbyDryerLabel: UILabel!
    @IBOutlet weak var farTreleaseWasherLabel: UILabel!
    @IBOutlet weak var farTreleaseDryerLabel: UILabel!
    @IBOutlet weak var goodwinWasherLabel: UILabel!
    @IBOutlet weak var goodwinDryerLabel: UILabel!
    
  func displayURL() {
    let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMPage?Login=True"
    let myURL = NSURL(string: myURLAdress)
    
    let URLTask = NSURLSession.sharedSession().dataTaskWithURL(myURL!) {
      myData, response, error in
      
      guard error == nil else { return }
      
      let myHTMLString = String(data: myData!, encoding: NSUTF8StringEncoding)
      var rangeOfTLD = myHTMLString!.startIndex.advancedBy(12346)..<myHTMLString!.startIndex.advancedBy(12348)
      let allenWashersAvailable = myHTMLString![rangeOfTLD]
      self.allenWasherLabel.text = allenWashersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(12543)..<myHTMLString!.startIndex.advancedBy(12545)
      let allenDryersAvailable = myHTMLString![rangeOfTLD]
      self.allenDryerLabel.text = allenDryersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(14322)..<myHTMLString!.startIndex.advancedBy(14325)
      let bartonWashersAvailable = myHTMLString![rangeOfTLD]
      self.bartonWasherLabel.text = bartonWashersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(14519)..<myHTMLString!.startIndex.advancedBy(14522)
      let bartonDryersAvailable = myHTMLString![rangeOfTLD]
      self.bartonDryerLabel.text = bartonDryersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(16299)..<myHTMLString!.startIndex.advancedBy(16303)
      let bousfieldWashersAvailable = myHTMLString![rangeOfTLD]
      self.bousfieldWasherLabel.text = bousfieldWashersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(16497)..<myHTMLString!.startIndex.advancedBy(16501)
      let bousfieldDryersAvailable = myHTMLString![rangeOfTLD]
      self.bousfieldDryerLabel.text = bousfieldDryersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(18273)..<myHTMLString!.startIndex.advancedBy(18276)
      let buseyWashersAvailable = myHTMLString![rangeOfTLD]
      self.buseyWasherLabel.text = buseyWashersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(18470)..<myHTMLString!.startIndex.advancedBy(18474)
      let buseyDryersAvailable = myHTMLString![rangeOfTLD]
      self.buseyDryerLabel.text = buseyDryersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(20248)..<myHTMLString!.startIndex.advancedBy(20251)
      let danielsNorthWashersAvailable = myHTMLString![rangeOfTLD]
      self.danielsNorthWasherLabel.text = danielsNorthWashersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(20445)..<myHTMLString!.startIndex.advancedBy(20448)
      let danielsNorthDryersAvailable = myHTMLString![rangeOfTLD]
      self.danielsNorthDryerLabel.text = danielsNorthDryersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(22222)..<myHTMLString!.startIndex.advancedBy(22225)
      let danielsSouthWashersAvailable = myHTMLString![rangeOfTLD]
      self.danielsSouthWasherLabel.text = danielsSouthWashersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(22419)..<myHTMLString!.startIndex.advancedBy(22422)
      let danielsSouthDryersAvailable = myHTMLString![rangeOfTLD]
      self.danielsSouthDryerLabel.text = danielsSouthDryersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(24195)..<myHTMLString!.startIndex.advancedBy(24199)
      let farOglesbyWashersAvailable = myHTMLString![rangeOfTLD]
      self.farOglesbyWasherLabel.text = farOglesbyWashersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(24393)..<myHTMLString!.startIndex.advancedBy(24396)
      let farOglesbyDryersAvailable = myHTMLString![rangeOfTLD]
      self.farOglesbyDryerLabel.text = farOglesbyDryersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(26170)..<myHTMLString!.startIndex.advancedBy(26174)
      let farTreleaseWashersAvailable = myHTMLString![rangeOfTLD]
      self.farTreleaseWasherLabel.text = farTreleaseWashersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(26368)..<myHTMLString!.startIndex.advancedBy(26371)
      let farTreleaseDryersAvailable = myHTMLString![rangeOfTLD]
      self.farTreleaseDryerLabel.text = farTreleaseDryersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(28149)..<myHTMLString!.startIndex.advancedBy(28152)
      let goodwinWashersAvailable = myHTMLString![rangeOfTLD]
      self.goodwinWasherLabel.text = goodwinWashersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(28346)..<myHTMLString!.startIndex.advancedBy(28349)
      let goodwinDryersAvailable = myHTMLString![rangeOfTLD]
      self.goodwinDryerLabel.text = goodwinDryersAvailable
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(30126)..<myHTMLString!.startIndex.advancedBy(30129)
      self.greenWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(30323)..<myHTMLString!.startIndex.advancedBy(30326)
      self.greenDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(32097)..<myHTMLString!.startIndex.advancedBy(32100)
      self.hopkinsWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(32294)..<myHTMLString!.startIndex.advancedBy(32297)
      self.hopkinsDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(34074)..<myHTMLString!.startIndex.advancedBy(34078)
      self.isrTownsendWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(34272)..<myHTMLString!.startIndex.advancedBy(34275)
      self.isrTownsendDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(36051)..<myHTMLString!.startIndex.advancedBy(36055)
      self.isrWardallWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(36249)..<myHTMLString!.startIndex.advancedBy(36252)
      self.isrWardallDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(38028)..<myHTMLString!.startIndex.advancedBy(38031)
      self.larLeonardWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(38225)..<myHTMLString!.startIndex.advancedBy(38228)
      self.larLeonardDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(40004)..<myHTMLString!.startIndex.advancedBy(40007)
      self.larSheldenWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(40201)..<myHTMLString!.startIndex.advancedBy(40204)
      self.larSheldenDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(41974)..<myHTMLString!.startIndex.advancedBy(41976)
      self.nugentWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(42171)..<myHTMLString!.startIndex.advancedBy(42175)
      self.nugentDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(43952)..<myHTMLString!.startIndex.advancedBy(43955)
      self.nugentRoomWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(44149)..<myHTMLString!.startIndex.advancedBy(44154)
      self.nugentRoomDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(45936)..<myHTMLString!.startIndex.advancedBy(45940)
      self.orchardNorthWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(46134)..<myHTMLString!.startIndex.advancedBy(46137)
      self.orchardNorthDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(47920)..<myHTMLString!.startIndex.advancedBy(47924)
      self.orchardSouthWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(48118)..<myHTMLString!.startIndex.advancedBy(48122)
      self.orchardSouthDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(49899)..<myHTMLString!.startIndex.advancedBy(49902)
      self.parBabcockWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(50096)..<myHTMLString!.startIndex.advancedBy(50099)
      self.parBabcockDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(51877)..<myHTMLString!.startIndex.advancedBy(51880)
      self.parBlaisdellWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(52074)..<myHTMLString!.startIndex.advancedBy(52077)
      self.parBlaisdellDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(53850)..<myHTMLString!.startIndex.advancedBy(53853)
      self.parCarrWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(54047)..<myHTMLString!.startIndex.advancedBy(54050)
      self.parCarrDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(55826)..<myHTMLString!.startIndex.advancedBy(55829)
      self.parSaundersWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(56023)..<myHTMLString!.startIndex.advancedBy(56026)
      self.parSaundersDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(57795)..<myHTMLString!.startIndex.advancedBy(57798)
      self.scottWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(57992)..<myHTMLString!.startIndex.advancedBy(57995)
      self.scottDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(59772)..<myHTMLString!.startIndex.advancedBy(59775)
      self.shermanShortWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(59969)..<myHTMLString!.startIndex.advancedBy(59972)
      self.shermanShortDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(61748)..<myHTMLString!.startIndex.advancedBy(61751)
      self.shermanTallWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(61945)..<myHTMLString!.startIndex.advancedBy(61948)
      self.shermanTallDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(63718)..<myHTMLString!.startIndex.advancedBy(63721)
      self.snyderWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(63915)..<myHTMLString!.startIndex.advancedBy(63919)
      self.snyderDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(65692)..<myHTMLString!.startIndex.advancedBy(65695)
      self.tvdTaftWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(65889)..<myHTMLString!.startIndex.advancedBy(65892)
      self.tvdTaftDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(67670)..<myHTMLString!.startIndex.advancedBy(67673)
      self.tvdVanDorenWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(67867)..<myHTMLString!.startIndex.advancedBy(67870)
      self.tvdVanDorenDryersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(69639)..<myHTMLString!.startIndex.advancedBy(69642)
      self.westonWashersAvailable = myHTMLString![rangeOfTLD]
      rangeOfTLD = myHTMLString!.startIndex.advancedBy(69836)..<myHTMLString!.startIndex.advancedBy(69841)
      self.westonDryersAvailable = myHTMLString![rangeOfTLD]
        

    }
    
    
    URLTask.resume()
  }
    func parse() {
        let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMPage?Login=True"
        let myURL = NSURL(string: myURLAdress)
        
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
    }
}

