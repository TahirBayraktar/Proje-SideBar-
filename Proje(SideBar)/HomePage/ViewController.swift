//
//  ViewController.swift
//  Proje(SideBar)
//
//  Created by Tahir Bayraktar on 20.03.2023.
//

import UIKit
import SideMenu
import AVFoundation
import AVKit
class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var videosCollectionView: UICollectionView!
    

    var videoImage = [UIImage]()
    var player : AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        
//        videosCollectionView.delegate = self
//        videosCollectionView.dataSource = self
        
        
        videoImage.append(UIImage(named: "id3Video1")!)
        videoImage.append(UIImage(named: "id3Video2")!)
        videoImage.append(UIImage(named: "id3Video3")!)
        
    }
    
    @IBAction func detailClickedButton(_ sender: Any) {
        performSegue(withIdentifier: "workSegue", sender: nil)
    }

    
    func urlVideoPlayer(url:URL){
        let urls = url
        player = AVPlayer(url: urls)
        avpController.player = player
        
        self.present(avpController, animated: true) {
            self.avpController.player?.play()
        }
    }
}
extension ViewController:UICollectionViewDelegate{
    
}
extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videoImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = videosCollectionView.dequeueReusableCell(withReuseIdentifier: "videosCell", for: indexPath) as! AVLPlayerCVCell
        cell.videosImageView.image = videoImage[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            urlVideoPlayer(url: URL(string: "https://firebasestorage.googleapis.com/v0/b/instagramfirebase2-1906a.appspot.com/o/video%2F1641967618963.MP4?alt=media&token=d4722f49-d75d-4bf9-bd88-8b66da410cc7")!)
            
        }
        if indexPath.row == 1{
            urlVideoPlayer(url: URL(string:"https://firebasestorage.googleapis.com/v0/b/instagramfirebase2-1906a.appspot.com/o/video%2Fid3video2.MP4?alt=media&token=a41b2e07-69f2-4f05-bd94-a86f50d770eb")!)
        }
        if indexPath.row == 2{
            urlVideoPlayer(url: URL(string: "https://firebasestorage.googleapis.com/v0/b/instagramfirebase2-1906a.appspot.com/o/video%2Fid3video3.MP4?alt=media&token=db2b0171-6577-4f64-8a0b-5812caff6f44")!)
        }
    }
    
}


