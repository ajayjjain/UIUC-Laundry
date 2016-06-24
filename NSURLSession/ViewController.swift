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
  override func viewDidLoad() {
    super.viewDidLoad()
    displayURL()
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
    }
    URLTask.resume()
  }
}

