//
//  User.swift
//  letsMeet
//
//  Created by jsood on 8/31/18.
//  Copyright © 2018 Jigyasaa Sood. All rights reserved.
//

import Foundation
import UIKit
import Parse

class User: PFUser {
    
    @NSManaged var id:String
    @NSManaged var name:String
    @NSManaged var location:CGPoint
    @NSManaged var userDescription:String
    @NSManaged var profilePic:PFFile
    @NSManaged var classes:[String]
    @NSManaged var followers:[String] //we can save an array of user's id's, not the whole user objects lol
    @NSManaged var events: [Event: PFObject]

    override init() {
        super.init()
    }
    
}
