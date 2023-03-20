//
//  ViewController.swift
//  Proje(SideBar)
//
//  Created by Tahir Bayraktar on 8.03.2023.
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
   
        videosCollectionView.delegate = self
        videosCollectionView.dataSource = self
        
        videoImage.append(UIImage(named: "id3Video1")!)
        videoImage.append(UIImage(named: "id3Video2")!)
        videoImage.append(UIImage(named: "id3Video3")!)
        
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
/*
extension ViewController:UITableViewDelegate{
    
}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = playerTableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath) as! AVLPlayerCell
        cell.videoImageView.image = videoImage[indexPath.row]
//        cell.videoImageView.layer.cornerRadius=50.0
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/instagramfirebase2-1906a.appspot.com/o/video%2Fvideoplayer.mp4?alt=media&token=ff8abe3d-22c3-40cd-bdc5-ddd02bb39463")
            player = AVPlayer(url: url!)
            avpController.player = player
            
            self.present(avpController,animated: true) {
                self.avpController.player?.play()
            }
            urlVideoPlayer(url: URL(string:  "https://firebasestorage.googleapis.com/v0/b/instagramfirebase2-1906a.appspot.com/o/video%2Fvideoplayer.mp4?alt=media&token=ff8abe3d-22c3-40cd-bdc5-ddd02bb39463")
)
        }
    }
    
    
        
        
    }
  
    
}*/

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
