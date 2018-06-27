//
//  UsersTableViewCell.swift
//  SecLibraryManagement
//
//  Created by MOSHIOUR on 5/21/17.
//  Copyright © 2017 Jonny B. All rights reserved.
//

import UIKit

class UsersTableViewCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    func configureCell(item: Item) {
        
        title.text = item.title
        price.text = "Serial No: \(item.price)"
        details.text = item.details
        thumb.image = item.toImage?.image as? UIImage
        
    }

}
