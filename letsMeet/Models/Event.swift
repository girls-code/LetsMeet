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
    @NSManaged var createdBy: User
    @NSManaged var dateOfEvent: Date
    @NSManaged var eventDescription: String
    @NSManaged var typeOfEvent: String
    @NSManaged var locationEvent: CLLocation
    
    init(createdBy: User, dateOfEvent: Date, eventDescription: String, typeOfEvent: String, locationEvent: CLLocation) {
        super.init()
        self.createdBy = createdBy
        self.dateOfEvent = dateOfEvent
        self.eventDescription = eventDescription
        self.typeOfEvent = typeOfEvent
        self.locationEvent = locationEvent
        
    }

}

