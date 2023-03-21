//
//  ServiceVC.swift
//  Proje(SideBar)
//
//  Created by Tahir Bayraktar on 13.03.2023.
//

import UIKit

class ServiceVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var serviceImages = [UIImage]()
    var serviceTitles = [String]()
    var serviceText = [String]()

    @IBOutlet weak var serviceTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        
        serviceTableView.delegate = self
        serviceTableView.dataSource = self
        
        serviceTitles.append("Danışmanlık")
        serviceTitles.append("Dış Kaynak Hizmetleri ")
        serviceTitles.append("Çevik Proje Yönetimi")
        serviceTitles.append("Mobil Uygulama Geliştirme")
        serviceTitles.append("Yazılım Geliştirme")
        serviceTitles.append("Entegrasyon Çözümleri")
        serviceTitles.append("DevOps Çözümleri")
        serviceTitles.append("Bulut Çözümleri")
        serviceTitles.append("Anahtar Teslim Projeler")
        
        serviceText.append("ID3 olarak kurulduğumuz günden bu yana bulunduğu sektörde lider konumunda olan müşterilerimiz için Danışmanlık hizmeti sunuyoruz. Müşterilerimizin ihtiyaçları doğrultusunda tüm kritik görev operasyonları için uluslararası alanda kabul gören yüksek teknolojili, kullanıcı dostu, kesintisiz ve çevik hizmetler üretiyoruz.")
        serviceText.append("Müşterilerimizin güncel ihtiyaçları doğrultusunda etkili projeler üretebilmeleri için dönemsel veya uzun süreli analiz, tasarım, mimari, yazılım, test ve operasyon alanlarında rekabetçi, uzman ve düşük maliyetli dış kaynaklar sağlıyoruz.")
        serviceText.append("Sürekli teste ve değişime açık, yinelemeli ve performans bazlı bir proje yönetimi yaklaşımı olan Çevik Proje Yönetimi hizmetimizle daha etkili ve uyumlu takım çalışması için gerekli optimizasyonları yapıyoruz. Düzenli planlamalar ve süreç toplantıları ile proje bitiminde hedeflenen noktaya ulaştığımızdan emin oluyoruz")
        serviceText.append("Müşterilerimizin kritik iş süreçlerinde ihtiyaç duydukları yönetim süreçlerini göz önünde bulundurarak kullanıcı dostu, kesintisiz ve geniş kapsamlı mobil uygulamalar geliştiriyoruz. İş birimlerinin kullandığı süreçleri optimize ve otomatize eden mobil uygulamaları geliştirirken uluslararası arenada kabul edilmiş teknolojileri kullanıyoruz.")
        serviceText.append("Esnek, çevik ve uzun yıllar boyunca kullanılabilecek sürdürülebilir kurumsal yazılım çözümlerimizle, müşterilerimizin gerçek hayattaki iş süreçlerine ve süreç içi ihtiyaçlarına uygun geliştirmeleri hayata geçiriyoruz. Değişimlere uyum sağlayan kurumsal yazılımlarımızı tasarlarken, uluslararası arenada kabul edilmiş güvenlik standartlarına koşulsuz uyum sağlıyoruz.")
        serviceText.append("Teknolojik altyapımız ile geliştirdiğimiz kurumsal entegrasyon çözümleriyle, müşterilerimizin gereksinimleri ile tam olarak örtüşen, hızlı, kolay ve kesintisiz yönetilebilen kurumsal iş sistemleri üretiyor, yeni geliştirdiğimiz çözümlerin mevcut sistemlerle başarılı bir şekilde entegre olmasını sağlıyoruz.")
        serviceText.append("Gelişmiş DevOps çözümlerimizle operasyonlar arası uçtan uca izlenebilir, verimli, güvenilir, kesintisiz, istikrarlı ve düşük maliyetli geliştirme ve operasyon süreçleri üretiyoruz. Ekipler arasında dinamik bir iletişim sağlayan DevOps çözümlerimiz sayesinde yazılım geliştiriciler, ağ yöneticileri, kalite güvence ekipleri ve operasyon ekipleri arasında uyumlu bir çalışma ortamı yaratıyoruz.")
        serviceText.append("Gelişmiş teknolojik altyapımız sayesinde, müşterilerimizin kritik operasyonlarına uyumlu olarak kesintisiz, esnek ve çevik Bulut Çözümleri sunuyoruz. Dijital dönüşüm ile kusursuz bir uyum içerisinde olan Bulut Çözümleri hizmetimizle her zaman, her yerden, kesintisiz süreçler yaratıyor, bu sayede kritik operasyonlarda oluşabilecek hataları öngörme ve buna bağlı aksiyon alma imkanı yaratıyoruz.")
        serviceText.append("Müşterilerimizin kritik iş süreçlerinde ihtiyaç duydukları projeleri tam zamanında tasarlamak ve teslim etmek için tüm gereksinimlerini analiz ediyor, proje geliştirme aşamasında uzman yazılımcılarımız, test ekiplerimiz ve tecrübeli analistlerimizle birlikte, müşterilerimizle koordine olarak çalışıyoruz.")
        
        
        serviceImages.append(UIImage(named: "serviceindex0")!)
        serviceImages.append(UIImage(named: "serviceindex1")!)
        serviceImages.append(UIImage(named: "serviceindex2")!)
        serviceImages.append(UIImage(named: "serviceindex3")!)
        serviceImages.append(UIImage(named: "serviceindex4")!)
        serviceImages.append(UIImage(named: "serviceindex5")!)
        serviceImages.append(UIImage(named: "serviceindex6")!)
        serviceImages.append(UIImage(named: "serviceindex7")!)
        serviceImages.append(UIImage(named: "serviceindex8")!)
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return serviceTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = serviceTableView.dequeueReusableCell(withIdentifier: "ServiceCell", for: indexPath) as! ServiceCell
        cell.serviceImageView.image = serviceImages[indexPath.row]
        cell.serviceTitleLabel.text = serviceTitles[indexPath.row]
        cell.serviceTextLabel.text = serviceText[indexPath.row]
        return cell
    }
    
   

}
