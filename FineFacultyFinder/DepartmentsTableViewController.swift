//
//  DepartmentsTableViewController.swift
//  FineFacultyFinder
//
//  Created by Nokhwal,Sahil on 3/10/16.
//  Copyright © 2016 Nokhwal,Sahil. All rights reserved.
//

import UIKit

class DepartmentsTableViewController: UITableViewController {

    
    var university:University!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
             university =  University()
       university.populateUniversity()
        NSNotificationCenter.defaultCenter().addObserver(self, selector:
            Selector("reloadData:"), name: "Data Delivered", object: nil)
        
        self.navigationItem.title = "Departments"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func reloadData(notification:NSNotification){
       tableView.reloadData()
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if university.departments != nil {
            return university.departments.count
        }
        return 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("department_cell", forIndexPath: indexPath)

        // Configure the cell...

        cell.textLabel?.text = university.departments[indexPath.row].name
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }



    
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        let indexPath = tableView.indexPathForSelectedRow!
        
        let facultyController:FacultyTableViewController = segue.destinationViewController as! FacultyTableViewController
        
        facultyController.department = Department(name: university.departments[indexPath.row].name, faculty: university.departments[indexPath.row].faculty, primaryBuilding:university.departments[indexPath.row].primaryBuilding )
        
        
    }


}
