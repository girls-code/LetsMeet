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

class Event: PFObject {
    var createdBy: PFUser
    var dateOfEvent: Date
    var eventDescription: String
    var typeOfEvent: String
    var locationEvent: CLLocation
    
    init(createdBy: PFUser, dateOfEvent: Date, eventDescription: String, typeOfEvent: String, locationEvent: CLLocation) {
=======
class Event: PFObject {
    @NSManaged var createdBy: User
    @NSManaged var dateOfEvent: Date
    @NSManaged var eventDescription: String
    @NSManaged var typeOfEvent: String
    @NSManaged var locationEvent: CLLocation
    
    init(createdBy: User, dateOfEvent: Date, eventDescription: String, typeOfEvent: String, locationEvent: CLLocation) {
        super.init()
>>>>>>> a1aa062b3a5fcfe5eb292afafebea4bb3478cf68
        self.createdBy = createdBy
        self.dateOfEvent = dateOfEvent
        self.eventDescription = eventDescription
        self.typeOfEvent = typeOfEvent
        self.locationEvent = locationEvent
        super.init()
    }
    
    func newEvent(){
        
    }
<<<<<<< HEAD
=======

>>>>>>> a1aa062b3a5fcfe5eb292afafebea4bb3478cf68
}

