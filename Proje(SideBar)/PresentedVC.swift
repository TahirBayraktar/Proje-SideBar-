//
//  PresentedVC.swift
//  Proje(SideBar)
//
//  Created by Tahir Bayraktar on 9.03.2023.
//

import UIKit

class PresentedVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var worksTableView: UITableView!
    
    var worksTitles = [String]()
    var worksEngTitles = [String]()
    var worksImages = [UIImage]()
    var worksText = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        worksTableView.delegate = self
        worksTableView.dataSource = self
        
        worksTitles.append("GOS TMAN & SLA")
        worksTitles.append("ATOM")
        worksTitles.append("GOS CMAN")
        worksTitles.append("FOMAN")
        worksTitles.append("FIMAN")
        worksTitles.append("HMAN")
        
        worksEngTitles.append("(Turnaround Management)")
        worksEngTitles.append("(Airline Tactical Operations Management)")
        worksEngTitles.append("(Connection Management)")
        worksEngTitles.append("(Flight Ordering Management)")
        worksEngTitles.append("(Fuel Integration Management)")
        worksEngTitles.append("(Airline Hotel Management)")
        
        worksText.append("Uçağın yerde olduğu geri dönüş süreci için ürettiğimiz GOS TMAN & SLA ile mevcut durumun tamamını izliyor, analiz ediyor ve ortaya çıkması olası sorunları, daha meydana gelmeden ortadan kaldırıyoruz. Uçağın çevrim sürecinde gecikme ve iptal gibi olağanüstü durumlar olduğu takdirde kritik operasyonel sapmaları öngörüyor ve mobil cihaz ile ilgili departmanı bilgilendiriyoruz.")
        worksText.append("Havacılık sektöründeki tüm süreçleri içine alan operasyonel merkezi veritabanı arayüzümüzle, bir uçuşla ilgili yüzlerce bilgiyi bir arada sunuyoruz. Merkezi ana veri yönetimi, veri ölçülebilirliği ve özelleştirilmiş dinamik sütunlar üretebilme gibi özellikler sayesinde karar verme mekanizmanızı daha etkin hale getiriyor, operasyonel verimliliğinizin artışını sağlıyoruz.")
        worksText.append("Transfer yolcularının bagaj yönetimi platformu olan GOS CMAN ile uçuş takibi, bagaj ve bağlantı koşullarını sürekli ve anlık olarak izliyor, yönetiyor, ölçümlüyor ve analizini yapıyoruz. GOS CMAN ile transfer yolcu ve bagaj durumunun etkili şekilde raporlanabilmesini ve herhangi bir aksamada hızla harekete geçilmesini sağlıyoruz.")
        worksText.append("Otomasyon Sistemi olarak geliştirdiğimiz FOMAN, uçuş bilgileri ve rezervasyon sistemleri ile tamamen entegre şekilde çalışır. Baz istasyonundan veya tedarikçi şirketten bağımsız yapısı ile sipariş oluşturma ve ilgili kişiye yönlendirme adımlarını otomatize eder, kesintisiz hale getirir.")
        worksText.append("Yakıt entegrasyon sistemi olarak geliştirilen FIMAN, uçak bilgileri ve yakıt alımı arasındaki eşleştirme işlemini kolaylaştırarak süreci otomatize eder ve evrak işleri ile manuel işlemleri azaltır. FIMAN, sahip olduğu SAP entegrasyonu ile operasyonel hataların da henüz meydana gelmeden ortadan kaldırılmasına katkıda bulunur.")
        worksText.append("Havayolu otel yönetim sistemlerini otomatize etmek amacıyla geliştirdiğimiz HMAN, otel kotasını ve önceliğini göz önünde bulundurarak uçuş ve rezervasyon sistemleri ile entegre çalışır, kullanım istatistikleri hakkında çok yönlü rapor ve diyagramlar sunarak otel yönetim süreçlerini şeffaflaştırır. ")
        
        worksImages.append(UIImage(named: "worksindex0")!)
        worksImages.append(UIImage(named: "worksindex1")!)
        worksImages.append(UIImage(named: "worksindex2")!)
        worksImages.append(UIImage(named: "worksindex3")!)
        worksImages.append(UIImage(named: "worksindex4")!)
        worksImages.append(UIImage(named: "worksindex5")!)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = worksTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WorksCell
        cell.titleLabel.text = worksTitles[indexPath.row]
        cell.titleEnglishLabel.text = worksEngTitles[indexPath.row]
        cell.labelComment.text = worksText[indexPath.row]
        cell.worksImageView.image = worksImages[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return worksText.count
    }
    

  
    }
    


