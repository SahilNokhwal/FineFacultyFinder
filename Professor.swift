//
//  Professor.swift
//  The Fine Faculty Finder
//
//  Created by Sahil Nokhwal on 2/23/16.
//  Copyright © 2016 Sahil Nokhwal. All rights reserved.
//

import Foundation
import UIKit

class Professor {
    
    

    
    var firstName:String
    var lastName:String
    var office:String
    var officeHours:String
    var image:UIImage
    
    init(firstName:String, lastName:String, office:String, officeHours:String,image:UIImage){
        self.firstName = firstName
        self.lastName = lastName
        self.office = office
        self.officeHours = officeHours
        self.image = image
    }
    
    
}