//
//  Event.swift
//  letsMeet
//
//  Created by jsood on 8/31/18.
//  Copyright © 2018 Jigyasaa Sood. All rights reserved.
//

import UIKit
import Parse


class Event: PFObject {
    var createdBy: PFUser
    var dateOfEvent: Date
    var eventDescription: String
    var typeOfEvent: String
    var locationEvent: CLLocation
    
    init(createdBy: PFUser, dateOfEvent: Date, eventDescription: String, typeOfEvent: String, locationEvent: CLLocation) {
        self.createdBy = createdBy
        self.dateOfEvent = dateOfEvent
        self.eventDescription = eventDescription
        self.typeOfEvent = typeOfEvent
        self.locationEvent = locationEvent
        super.init()
    }
    
    func newEvent(){
        
    }
}

