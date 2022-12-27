//
//  DetailVC.swift
//  ProjectAIRBNB
//
//  Created by Iqbal Karim on 27.12.2022.
//

import UIKit

class DetailVC: UIViewController {

    var mRecord = Record()
    @IBOutlet weak var mName: UILabel!
    
    @IBOutlet weak var mDesc: UITextView!
    @IBOutlet weak var mimage: UIImageView!
    @IBOutlet weak var mCategory: UILabel!
    @IBOutlet weak var mLocation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mDesc.text = mRecord.description
        mName.text = mRecord.name
        mimage.image = UIImage(named: mRecord.image)
        mLocation.text = mRecord.location
        mCategory.text = mRecord.category
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
