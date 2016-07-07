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
    var array = [String]()
    
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
    //parBlaisdell().parse()
    //parBlaisdellParse()
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
    
    @IBAction func readPress(sender: AnyObject) {
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
    
    @IBAction func myDorm(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        if let name = defaults.stringForKey("dorm") {
            print(defaults.stringForKey("dorm"))
            if name == "Blaisdell"{
                performSegueWithIdentifier("parBlaisdell", sender: nil)

            }
            else if name == "Carr"{
                performSegueWithIdentifier("parCarr", sender: nil)

            }
            else if name == "goodwin"{
                performSegueWithIdentifier("goodwin", sender: nil)
                
            }
        }

    }
  func displayURL() {
    let myURLAdress = "https://www.laundryalert.com/cgi-bin/urba7723/LMPage?Login=True"
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
            self.array.removeRange(0...13)
        }
        
        let allenWashersAvailable = self.array[1]
        let allenDryersAvailable = self.array[2]
        let bartonWashersAvailable = self.array[6]
        let bartonDryersAvailable = self.array[7]
        let bousfieldWashersAvailable = self.array[11]
        let bousfieldDryersAvailable = self.array[12]
        let buseyWashersAvailable = self.array[16]
        let buseyDryersAvailable = self.array[17]
        let danielsNorthWashersAvailable = self.array[21]
        let danielsNorthDryersAvailable = self.array[22]
        let danielsSouthWashersAvailable = self.array[26]
        let danielsSouthDryersAvailable = self.array[27]
        let farOglesbyWashersAvailable = self.array[31]
        let farOglesbyDryersAvailable = self.array[32]
        let farTreleaseWashersAvailable = self.array[36]
        let farTreleaseDryersAvailable = self.array[37]
        let goodwinWashersAvailable = self.array[41]
        let goodwinDryersAvailable = self.array[42]
        self.greenWashersAvailable = self.array[46]
        self.greenDryersAvailable = self.array[47]
        self.hopkinsWashersAvailable = self.array[51]
        self.hopkinsDryersAvailable = self.array[52]
        self.isrTownsendWashersAvailable = self.array[56]
        self.isrTownsendDryersAvailable = self.array[57]
        self.isrWardallWashersAvailable = self.array[61]
        self.isrWardallDryersAvailable = self.array[62]
        self.larLeonardWashersAvailable = self.array[66]
        self.larLeonardDryersAvailable = self.array[67]
        self.larSheldenWashersAvailable = self.array[71]
        self.larSheldenDryersAvailable = self.array[72]
        self.nugentWashersAvailable = self.array[76]
        self.nugentDryersAvailable = self.array[77]
        self.nugentRoomWashersAvailable = self.array[81]
        self.nugentRoomDryersAvailable = self.array[82]
        self.orchardNorthWashersAvailable = self.array[86]
        self.orchardNorthDryersAvailable = self.array[87]
        self.orchardSouthWashersAvailable = self.array[91]
        self.orchardSouthDryersAvailable = self.array[92]
        self.parBabcockWashersAvailable = self.array[96]
        self.parBabcockDryersAvailable = self.array[97]
        self.parBlaisdellWashersAvailable = self.array[101]
        self.parBlaisdellDryersAvailable = self.array[102]
        self.parCarrWashersAvailable = self.array[106]
        self.parCarrDryersAvailable = self.array[107]
        self.parSaundersWashersAvailable = self.array[111]
        self.parSaundersDryersAvailable = self.array[112]
        self.scottWashersAvailable = self.array[116]
        self.scottDryersAvailable = self.array[117]
        self.shermanShortWashersAvailable = self.array[121]
        self.shermanShortDryersAvailable = self.array[122]
        self.shermanTallWashersAvailable = self.array[126]
        self.shermanTallDryersAvailable = self.array[127]
        self.snyderWashersAvailable = self.array[131]
        self.snyderDryersAvailable = self.array[132]
        self.tvdTaftWashersAvailable = self.array[136]
        self.tvdTaftDryersAvailable = self.array[137]
        self.tvdVanDorenWashersAvailable = self.array[141]
        self.tvdVanDorenDryersAvailable = self.array[142]
        self.westonWashersAvailable = self.array[146]
        self.westonDryersAvailable = self.array[147]
        
        dispatch_async(dispatch_get_main_queue()) {
            self.allenWasherLabel.text = allenWashersAvailable
            self.allenDryerLabel.text = allenDryersAvailable
            self.bartonWasherLabel.text = bartonWashersAvailable
            self.bartonDryerLabel.text = bartonDryersAvailable
            self.bousfieldWasherLabel.text = bousfieldWashersAvailable
            self.bousfieldDryerLabel.text = bousfieldDryersAvailable
            self.buseyWasherLabel.text = buseyWashersAvailable
            self.buseyDryerLabel.text = buseyDryersAvailable
            self.danielsNorthWasherLabel.text = danielsNorthWashersAvailable
            self.danielsNorthDryerLabel.text = danielsNorthDryersAvailable
            self.danielsSouthWasherLabel.text = danielsSouthWashersAvailable
            self.danielsSouthDryerLabel.text = danielsSouthDryersAvailable
            self.farOglesbyWasherLabel.text = farOglesbyWashersAvailable
            self.farOglesbyDryerLabel.text = farOglesbyDryersAvailable
            self.farTreleaseWasherLabel.text = farTreleaseWashersAvailable
            self.farTreleaseDryerLabel.text = farTreleaseDryersAvailable
            self.goodwinWasherLabel.text = goodwinWashersAvailable
            self.goodwinDryerLabel.text = goodwinDryersAvailable            
        }


        

    }
    
    
    URLTask.resume()
  }
}

