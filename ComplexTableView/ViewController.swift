//
//  ViewController.swift
//  ComplexTableView
//
//  Created by Subrat Gyawali on 12/16/18.
//  Copyright © 2018 Subrat Gyawali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    fileprivate let viewModel = ProfileViewModel()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.dataSource = viewModel
        tableView?.estimatedRowHeight = 100
        tableView?.rowHeight = UITableView.automaticDimension
       
        tableView?.register(NamePictureCellTableViewCell.nib, forCellReuseIdentifier: NamePictureCellTableViewCell.identifier)
        tableView?.register(FriendCell.nib, forCellReuseIdentifier: FriendCell.identifier)
        tableView?.register(EmailCell.nib, forCellReuseIdentifier: EmailCell.identifier)
        tableView?.register(AttributeCell.nib, forCellReuseIdentifier: AttributeCell.identifier)
        tableView?.register(AboutCell.nib, forCellReuseIdentifier: AboutCell.identifier)
    }


}

