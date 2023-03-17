//
//  WorksCell.swift
//  Proje(SideBar)
//
//  Created by Tahir Bayraktar on 10.03.2023.
//

import UIKit

class WorksCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var titleEnglishLabel: UILabel!
    
    @IBOutlet weak var worksImageView: UIImageView!
    

    @IBOutlet weak var labelComment: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
