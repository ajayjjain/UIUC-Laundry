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

class fourthViewController: UIViewController {
    var tvdTaftWashersAvailable = "0"
    var tvdTaftDryersAvailable = "0"
    var tvdVanDorenWashersAvailable = "0"
    var tvdVanDorenDryersAvailable = "0"
    var westonWashersAvailable = "0"
    var westonDryersAvailable = "0"
    //@IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var taftWasherLabel: UILabel!
    @IBOutlet weak var taftDryerLabel: UILabel!
    @IBOutlet weak var vanDorenWasherLabel: UILabel!
    @IBOutlet weak var vanDorenDryerLabel: UILabel!
    @IBOutlet weak var westonWasherLabel: UILabel!
    @IBOutlet weak var westonDryerLabel: UILabel!
    
    
    @IBOutlet weak var taft: UIImageView!
    @IBOutlet weak var vanDoren: UIImageView!
    @IBOutlet weak var weston: UIImageView!
    
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
        
        self.taftWasherLabel.text = tvdTaftWashersAvailable
        self.taftDryerLabel.text = tvdTaftDryersAvailable
        self.vanDorenWasherLabel.text = tvdVanDorenWashersAvailable
        self.vanDorenDryerLabel.text = tvdVanDorenDryersAvailable
        self.westonWasherLabel.text = westonWashersAvailable
        self.westonDryerLabel.text = westonDryersAvailable
        //print(parBlaisdellDryersAvailable)
        
        taft.layer.cornerRadius = 8.0
        taft.clipsToBounds = true
        vanDoren.layer.cornerRadius = 8.0
        vanDoren.clipsToBounds = true
        weston.layer.cornerRadius = 8.0
        weston.clipsToBounds = true

        
        let image : UIImage = UIImage(named: "logo1.jpg")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .ScaleAspectFit
        imageView.image = image
        self.navigationItem.titleView = imageView
    }
    @IBAction func clickButton(sender: AnyObject) {
        self.navigationController!.popViewControllerAnimated(true)
    }

    
    
}


