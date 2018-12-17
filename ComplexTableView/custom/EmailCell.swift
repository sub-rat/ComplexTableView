//
//  EmailCell.swift
//  ComplexTableView
//
//  Created by Subrat Gyawali on 12/16/18.
//  Copyright © 2018 Subrat Gyawali. All rights reserved.
//

import UIKit

class EmailCell: UITableViewCell {

    @IBOutlet weak var emailLabel: UILabel!
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelEmailItem else {
                return
            }
            emailLabel?.text = item.email
        }
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib:UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
