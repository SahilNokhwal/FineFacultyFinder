//
//  ViewController.swift
//  FineFacultyFinder
//
//  Created by Nokhwal,Sahil on 3/10/16.
//  Copyright © 2016 Nokhwal,Sahil. All rights reserved.
//

import UIKit

class ProfessorInfoViewController: UIViewController {

    
    
    
    
    var professor:Professor!
    
    
    @IBOutlet weak var officeLBL: UILabel!
    
    
    
    
    @IBOutlet weak var officeHoursLBL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func viewWillAppear(animated: Bool) {
        
        officeLBL.text = professor.office
        officeHoursLBL.text = professor.officeHours
        
        
        
        navigationItem.title = professor.firstName + " " + professor.lastName
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

