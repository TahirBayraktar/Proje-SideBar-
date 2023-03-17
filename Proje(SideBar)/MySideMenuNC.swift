//
//  MySideMenuNC.swift
//  Proje(SideBar)
//
//  Created by Tahir Bayraktar on 10.03.2023.
//

import UIKit
import SideMenu
class MySideMenuNC: SideMenuNavigationController {

    let customSideMenuManager = SideMenuManager()

        override func awakeFromNib() {
            super.awakeFromNib()

            sideMenuManager = customSideMenuManager
        }
    



}
