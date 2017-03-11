//
//  Department.swift
//  The Fine Faculty Finder
//
//  Created by Sahil Nokhwal on 2/21/16.
//  Copyright © 2016 Sahil Nokhwal. All rights reserved.
//

import Foundation

class Department {
    
    var name:String
    var faculty:[Professor]
    var primaryBuilding:String
    
    init(name:String, faculty:[Professor], primaryBuilding:String){
        self.name = name
        self.faculty = faculty
        self.primaryBuilding = primaryBuilding
    }

}