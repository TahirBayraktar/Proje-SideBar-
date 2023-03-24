//
//  ReferenceVC.swift
//  Proje(SideBar)
//
//  Created by Tahir Bayraktar on 14.03.2023.
//

import UIKit

class ReferenceVC: UIViewController{
    
    
    
    var refImages = [UIImage]()
//    var refTitles = [String]()
    
    @IBOutlet weak var refCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        
        refCollectionView.delegate = self
        refCollectionView.dataSource = self
//        refCollectionView.collectionViewLayout = UICollectionViewLayout()
        
        refImages.append(UIImage(named: "Refindex0")!)
        refImages.append(UIImage(named: "Refindex1")!)
        refImages.append(UIImage(named: "Refindex2")!)
        refImages.append(UIImage(named: "Refindex3")!)
        refImages.append(UIImage(named: "refindex4")!)
        refImages.append(UIImage(named: "refindex5")!)
        refImages.append(UIImage(named: "refindex6")!)
        refImages.append(UIImage(named: "refindex7")!)
        refImages.append(UIImage(named: "refindex8")!)
        refImages.append(UIImage(named: "refindex9")!)
        refImages.append(UIImage(named: "refindex10")!)
        refImages.append(UIImage(named: "refindex11")!)
        refImages.append(UIImage(named: "refindex12")!)
        refImages.append(UIImage(named: "refindex13")!)
        refImages.append(UIImage(named: "refindex14")!)
        refImages.append(UIImage(named: "refindex15")!)
        refImages.append(UIImage(named: "refindex16")!)
        refImages.append(UIImage(named: "refindex17")!)
        
 /*       refTitles.append("test")
        refTitles.append("test1")
        refTitles.append("test2")
        refTitles.append("test3")*/
    }
 
    
 /*  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       return CGSize(width: 200, height: 300)
 }*/

    
}
extension ReferenceVC:UICollectionViewDelegate{
    
}
extension ReferenceVC: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return refImages.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = refCollectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! RefCollectionViewCell
//        cell.refTitleLabel.text = refTitles[indexPath.row]
        cell.refImageView.image = refImages[indexPath.row]
        return cell
    }
    
    
}

