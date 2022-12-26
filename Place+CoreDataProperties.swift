//
//  Place+CoreDataProperties.swift
//  
//
//  Created by Iqbal Karim on 26.12.2022.
//
//

import Foundation
import CoreData


extension Place {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Place> {
        return NSFetchRequest<Place>(entityName: "Place")
    }

    @NSManaged public var name: String?
    @NSManaged public var image: String?

}
