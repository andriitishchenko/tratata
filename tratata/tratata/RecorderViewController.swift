//
//  RecorderViewController.swift
//  tratata
//
//  Created by Andrii Tishchenko on 19.05.15.
//  Copyright (c) 2015 Andrii Tishchenko. All rights reserved.
//

import UIKit
import Social
import MapKit

class RecorderViewController: BaseViewController {

    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var buttonRecording : UIBarButtonItem = UIBarButtonItem(title: "Start", style: UIBarButtonItemStyle.Plain, target: self, action: "buttonRecording_click:")
        self.navigationItem.rightBarButtonItem = buttonRecording


        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonShare_click(sender: UIBarButtonItem) {
        let textToShare = "Swift is awesome!  Check out this website about it!"
        
        if let myWebsite = NSURL(string: "http://www.codingexplorer.com/")
        {
            let objectsToShare = [textToShare, myWebsite]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            
            //New Excluded Activities Code
            activityVC.excludedActivityTypes = [UIActivityTypeAirDrop, UIActivityTypeAddToReadingList]
            //
            
            self.presentViewController(activityVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonMap_click(sender: UIBarButtonItem) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override var tableView:UITableView! {
//        return self.tableViewStats
//    }
    
    @IBAction func buttonShowNewTrack_click(sender:UIBarButtonItem!)
    {
        sender.title = "Stop";
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
