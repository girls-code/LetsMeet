//
//  Event.swift
//  letsMeet
//
//  Created by jsood on 8/31/18.
//  Copyright © 2018 Jigyasaa Sood. All rights reserved.
//

import UIKit
import Parse

<<<<<<< HEAD
class Event {
    var createdBy: PFUser
    var dateOfEvent: Date
    var description: String
    var typeOfEvent: String
    var locationEvent: CLLocation
    
    init(createdBy: PFUser, dateOfEvent: Date, description: String, typeOfEvent: String, locationEvent: CLLocation) {
        self.createdBy = createdBy
        self.dateOfEvent = dateOfEvent
        self.description = description
        self.typeOfEvent = typeOfEvent
        self.locationEvent = locationEvent
        
    }
=======

class Event: PFObject {

>>>>>>> c7053c4801aba729757b8bf95630374d8c0a267e
}

