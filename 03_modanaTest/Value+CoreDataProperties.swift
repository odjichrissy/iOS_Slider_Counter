//
//  Value+CoreDataProperties.swift
//  03_modanaTest
//
//  Created by Chrissy Satyananda on 17/08/19.
//  Copyright © 2019 Odjichrissy. All rights reserved.
//
//

import Foundation
import CoreData


extension Value {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Value> {
        return NSFetchRequest<Value>(entityName: "Value")
    }

    @NSManaged public var counter: Int32

}
