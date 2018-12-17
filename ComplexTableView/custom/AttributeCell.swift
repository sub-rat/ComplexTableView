//
//  AttributeCell.swift
//  ComplexTableView
//
//  Created by Subrat Gyawali on 12/16/18.
//  Copyright © 2018 Subrat Gyawali. All rights reserved.
//

import UIKit

class AttributeCell: UITableViewCell {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    var item: Attribute?  {
        didSet {
            titleLable?.text = item?.key
            valueLabel?.text = item?.value
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
