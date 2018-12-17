//
//  FriendCell.swift
//  ComplexTableView
//
//  Created by Subrat Gyawali on 12/16/18.
//  Copyright © 2018 Subrat Gyawali. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {

    @IBOutlet weak var imageLable: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var item: Friend? {
        didSet{
            guard let item = item else {
                return
            }
            if let pictureUrl = item.pictureUrl {
                imageLable?.image = UIImage(named: pictureUrl)
            }
            nameLabel?.text = item.name
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

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        imageLable?.image = nil
    }
    
}
