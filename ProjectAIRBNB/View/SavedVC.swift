//
//  SavedVC.swift
//  ProjectAIRBNB
//
//  Created by Iqbal Karim on 27.12.2022.
//

import UIKit

class SavedVC: UIViewController {

    let mDataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mDataSource.populate()
    }

}
