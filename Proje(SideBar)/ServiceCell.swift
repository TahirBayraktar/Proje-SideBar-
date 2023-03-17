//
//  ServiceCell.swift
//  Proje(SideBar)
//
//  Created by Tahir Bayraktar on 13.03.2023.
//

import UIKit

class ServiceCell: UITableViewCell {

    @IBOutlet weak var serviceImageView: UIImageView!
    
    @IBOutlet weak var serviceTitleLabel: UILabel!
    
    @IBOutlet weak var serviceTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
