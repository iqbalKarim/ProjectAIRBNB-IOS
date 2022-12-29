//
//  DetailVC.swift
//  ProjectAIRBNB
//
//  Created by Iqbal Karim on 27.12.2022.
//

import UIKit
import CoreData



class DetailVC: UIViewController {

    var mRecord = Record()
    @IBOutlet weak var mName: UILabel!
    
    @IBOutlet weak var mDesc: UITextView!
    @IBOutlet weak var mimage: UIImageView!
    @IBOutlet weak var mCategory: UILabel!
    @IBOutlet weak var mLocation: UILabel!
    
    let savedView = SavedVC()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mDesc.text = mRecord.description
        mName.text = mRecord.name
        mimage.image = UIImage(named: mRecord.image)
        mLocation.text = mRecord.location
        mCategory.text = mRecord.category
        
    }
    
    @IBAction func longPressGesture(_ sender: Any) {
        let longPressAlert = UIAlertController(title: "Saved", message: "The place has been saved to your favourites.", preferredStyle: UIAlertController.Style.alert)
        longPressAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(longPressAlert, animated: true, completion: nil)
        saveSuccess(place: mRecord)
    }
    
    func saveSuccess(place: Record) {
        _ = PlaceCore.createInManagedObjectContext(context, name: place.name, location: place.location, category: place.category, img: place.image, desc: place.description)
        do {
            try context.save()
        } catch let error as NSError  {
            print("Could not save \(error), \(error.userInfo)")
        }
    }
    
}
