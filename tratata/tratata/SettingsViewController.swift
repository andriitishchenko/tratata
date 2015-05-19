//
//  SettingsViewController.swift
//  tratata
//
//  Created by Andrii Tishchenko on 19.05.15.
//  Copyright (c) 2015 Andrii Tishchenko. All rights reserved.
//

import UIKit

class SettingsViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.datasource = ["settings_minspeedtrack","settings_linecolor"]
        self.datasourceMap = ["settings_minspeedtrack":"Minimal speed","settings_linecolor":"Track line color"]
        tableView.registerNib(UINib(nibName: "EditTableViewCell", bundle: nil), forCellReuseIdentifier: "EditTableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.datasource.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EditTableViewCell", forIndexPath: indexPath) as! UITableViewCell
        let textkey :NSString = self.datasource[indexPath.row] as! NSString
        let text:NSString = self.datasourceMap[textkey]as! NSString
        cell.textLabel?.text = text as String

        return cell
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
