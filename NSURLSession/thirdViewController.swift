//
//  thirdViewController.swift
//  IlliniLaundry
//
//  Created by Ajay Jain on 6/25/16.
//  Copyright © 2016 Ajay Jain. All rights reserved.
//

import UIKit

//
//  thirdViewController.swift
//
//
//  Created by Ajay Jain on 6/20/2016
//  Copyright © 2016 Ajay Jain. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {
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
    //@IBOutlet weak var myWebView: UIWebView!
    
    @IBOutlet weak var orchardSouth: UIImageView!
    @IBOutlet weak var parBabcock: UIImageView!
    @IBOutlet weak var parBlaisdell: UIImageView!
    @IBOutlet weak var parCarr: UIImageView!
    @IBOutlet weak var parSaunders: UIImageView!
    @IBOutlet weak var scott: UIImageView!
    @IBOutlet weak var shermanShort: UIImageView!
    @IBOutlet weak var shermanTall: UIImageView!
    @IBOutlet weak var snyder: UIImageView!
    
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
        
        self.orchardSouthWasherLabel.text = orchardSouthWashersAvailable
        self.orchardSouthDryerLabel.text = orchardSouthDryersAvailable
        self.parBabcockWasherLabel.text = parBabcockWashersAvailable
        self.parBabcockDryerLabel.text = parBabcockDryersAvailable
        self.parBlaisdellWasherLabel.text = parBlaisdellWashersAvailable
        self.parBlaisdellDryerLabel.text = parBlaisdellDryersAvailable
        self.parCarrWasherLabel.text = parCarrWashersAvailable
        self.parCarrDryerLabel.text = parCarrDryersAvailable
        self.parSaundersWasherLabel.text = parSaundersWashersAvailable
        self.parSaundersDryerLabel.text = parSaundersDryersAvailable
        self.scottWasherLabel.text = scottWashersAvailable
        self.scottDryerLabel.text = scottDryersAvailable
        self.shermanShortWasherLabel.text = shermanShortWashersAvailable
        self.shermanShortDryerLabel.text = shermanShortDryersAvailable
        self.shermanTallWasherLabel.text = shermanTallWashersAvailable
        self.shermanTallDryerLabel.text = shermanTallDryersAvailable
        self.snyderWasherLabel.text = snyderWashersAvailable
        self.snyderDryerLabel.text = snyderDryersAvailable
        //print(parBlaisdellDryersAvailable)
        
        orchardSouth.layer.cornerRadius = 8.0
        orchardSouth.clipsToBounds = true
        parBabcock.layer.cornerRadius = 8.0
        parBabcock.clipsToBounds = true
        parBlaisdell.layer.cornerRadius = 8.0
        parBlaisdell.clipsToBounds = true
        parCarr.layer.cornerRadius = 8.0
        parCarr.clipsToBounds = true
        parSaunders.layer.cornerRadius = 8.0
        parSaunders.clipsToBounds = true
        scott.layer.cornerRadius = 8.0
        scott.clipsToBounds = true
        shermanShort.layer.cornerRadius = 8.0
        shermanShort.clipsToBounds = true
        shermanTall.layer.cornerRadius = 8.0
        shermanTall.clipsToBounds = true
        snyder.layer.cornerRadius = 8.0
        snyder.clipsToBounds = true
        
        let image : UIImage = UIImage(named: "logo1.jpg")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .ScaleAspectFit
        imageView.image = image
        self.navigationItem.titleView = imageView
    }
    @IBAction func clickButton(sender: AnyObject) {
        self.navigationController!.popViewControllerAnimated(true)
    }
    
    
    @IBOutlet weak var orchardSouthWasherLabel: UILabel!
    @IBOutlet weak var orchardSouthDryerLabel: UILabel!
    @IBOutlet weak var parBabcockWasherLabel: UILabel!
    @IBOutlet weak var parBabcockDryerLabel: UILabel!
    @IBOutlet weak var parBlaisdellWasherLabel: UILabel!
    @IBOutlet weak var parBlaisdellDryerLabel: UILabel!
    @IBOutlet weak var parCarrWasherLabel: UILabel!
    @IBOutlet weak var parCarrDryerLabel: UILabel!
    @IBOutlet weak var parSaundersWasherLabel: UILabel!
    @IBOutlet weak var parSaundersDryerLabel: UILabel!
    @IBOutlet weak var scottWasherLabel: UILabel!
    @IBOutlet weak var scottDryerLabel: UILabel!
    @IBOutlet weak var shermanShortWasherLabel: UILabel!
    @IBOutlet weak var shermanShortDryerLabel: UILabel!
    @IBOutlet weak var shermanTallWasherLabel: UILabel!
    @IBOutlet weak var shermanTallDryerLabel: UILabel!
    @IBOutlet weak var snyderWasherLabel: UILabel!
    @IBOutlet weak var snyderDryerLabel: UILabel!
    
    
    
}


