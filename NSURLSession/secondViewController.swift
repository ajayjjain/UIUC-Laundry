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
    @IBOutlet weak var green: UIImageView!
    @IBOutlet weak var hopkins: UIImageView!
    @IBOutlet weak var townsend: UIImageView!
    @IBOutlet weak var wardall: UIImageView!
    @IBOutlet weak var leonard: UIImageView!
    @IBOutlet weak var shelden: UIImageView!
    @IBOutlet weak var nugent: UIImageView!
    @IBOutlet weak var nugentRoom: UIImageView!
    @IBOutlet weak var orchardNorth: UIImageView!
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
        
        green.layer.cornerRadius = 8.0
        green.clipsToBounds = true
        hopkins.layer.cornerRadius = 8.0
        hopkins.clipsToBounds = true
        townsend.layer.cornerRadius = 8.0
        townsend.clipsToBounds = true
        wardall.layer.cornerRadius = 8.0
        wardall.clipsToBounds = true
        leonard.layer.cornerRadius = 8.0
        leonard.clipsToBounds = true
        shelden.layer.cornerRadius = 8.0
        shelden.clipsToBounds = true
        nugent.layer.cornerRadius = 8.0
        nugent.clipsToBounds = true
        nugentRoom.layer.cornerRadius = 8.0
        nugentRoom.clipsToBounds = true
        orchardNorth.layer.cornerRadius = 8.0
        orchardNorth.clipsToBounds = true
        //displayURL()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "nextScreen"{
            let vc = segue.destinationViewController as! thirdViewController
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

}

