//
//  ViewController.swift
//  tabloGorunumu
//
//  Created by Bunyamin on 27.03.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,
    UITableViewDataSource{

    @IBOutlet weak var tabloGörünümü: UITableView!
    var kentselDiziler=[String]()
    var kentselGörüntüler=[UIImage]()
    var tıklananşehir=""
    var tiklanangörsel=UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabloGörünümü.delegate=self
        tabloGörünümü.dataSource=self
        
        kentselDiziler.append("Alahcahöyük")
        kentselDiziler.append("AnadoluMedeniyetleri")
        kentselDiziler.append("Anıtkabir")
        kentselDiziler.append("BodrumSualtı")
        kentselDiziler.append("ÇanakkaleTroya")
        kentselDiziler.append("HatayArkeoloji")
        kentselDiziler.append("Mevlana")
        kentselDiziler.append("SelçukEfes")
        kentselDiziler.append("Ulucanlar")
        kentselDiziler.append("ZeugmaMozaik")
        
        
        kentselGörüntüler.append(UIImage(named: "Alahcahöyük")!)
        kentselGörüntüler.append(UIImage(named: "AnadoluMedeniyetleri")!)
        kentselGörüntüler.append(UIImage(named: "Anıtkabir")!)
        kentselGörüntüler.append(UIImage(named: "BodrumSualtı")!)
        kentselGörüntüler.append(UIImage(named: "ÇanakkaleTroya")!)
        kentselGörüntüler.append(UIImage(named: "HatayArkeoloji")!)
        kentselGörüntüler.append(UIImage(named: "Mevlana")!)
        kentselGörüntüler.append(UIImage(named: "SelçukEfes")!)
        kentselGörüntüler.append(UIImage(named: "Ulucanlar")!)
        kentselGörüntüler.append(UIImage(named: "ZeugmaMozaik")!)

        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kentselDiziler.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hücre = UITableViewCell()
        
        var içerik = hücre.defaultContentConfiguration()
        içerik.text=kentselDiziler[indexPath.row]
        hücre.contentConfiguration=içerik
        return hücre
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tıklananşehir=kentselDiziler[indexPath.row]
        
        tiklanangörsel=kentselGörüntüler[indexPath.row]
        
        
        performSegue(withIdentifier: "gorsel", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="gorsel"{
            let gidilecekHedef=segue.destination as! gorsel
            gidilecekHedef.seçilenşehir=tıklananşehir
            gidilecekHedef.seçilengörüntü=tiklanangörsel
            
            if gidilecekHedef.seçilenşehir=="Anıtkabir"{
                
                gidilecekHedef.seçilenbilgilerim="Anıtkabir’de tören alanından Anıt bloğuna doğru bakıldığında, sağda yer alan Misak-ı Millî Kulesi’nin kapısından girilen müze, 21 Haziran 1960 tarihinde Anıtkabir Atatürk Müzesi adıyla açılmıştır."
                
            }
            if gidilecekHedef.seçilenşehir=="Alahcahöyük"{
                
                gidilecekHedef.seçilenbilgilerim="Alacahöyük, Çorum'un Alaca ilçesinin 15 km kuzeybatısındaki Alacahüyük köyündeki bir höyüktür. Bu höyükte dört ayrı kültür evresinden kalma 15 yerleşim ya da yapı katı saptanmıştır. "
                
            }
            if gidilecekHedef.seçilenşehir=="AnadoluMedeniyetleri"{
                
                gidilecekHedef.seçilenbilgilerim="Anadolu Medeniyetleri Müzesi; Ankara'nın Altındağ ilçesinde bulunan bir tarih ve arkeoloji müzesidir. Müzede, Anadolu'da yaşamış olan uygarlıklardan geriye kalan arkeolojik eserler kronolojik olarak sergilenmektedir."
                
            }
            if gidilecekHedef.seçilenşehir=="BodrumSualtı"{
                
                gidilecekHedef.seçilenbilgilerim="Antik gemi enkazlarından çıkan eserler ve büyük bir cam eserleri koleksiyonuyla Bodrum Kalesi müzesi."
                
            }
            if gidilecekHedef.seçilenşehir=="ÇanakkaleTroya"{
                
                gidilecekHedef.seçilenbilgilerim="Truva, Kaz Dağı eteklerinde tarihî bir kenttir. Çanakkale il sınırları içinde, günümüzde Hisarlık olarak adlandırılan arkeolojik bölgede yer alır. Çanakkale Boğazı'nın güneybatı ağzının hemen güneyinde ve Kaz Dağı'nın kuzeybatısında bulunan bir şehirdir"
                
            }
            if gidilecekHedef.seçilenşehir=="HatayArkeoloji"{
                
                gidilecekHedef.seçilenbilgilerim="Hatay Arkeoloji Müzesi, Hatay Müzesi ya da Antakya Arkeoloji Müzesi, antik döneme ait eserlerin sergilendiği bir sanat müzesidir."
                
            }
            if gidilecekHedef.seçilenşehir=="Mevlana"{
                
                gidilecekHedef.seçilenbilgilerim="Mevlânâ Müzesi, Konya'da bulunan, eskiden Mevlâna'nın dergâhı olan yapı kompleksinde 1926 yılından beri faaliyet gösteren müzedir. Mevlana Türbesi olarak da anılır. Yeşil Kubbe yani Mevlana'nın türbesi dört kalın sütun üzerine yapılmıştır. "
                
            }
            if gidilecekHedef.seçilenşehir=="SelçukEfes"{
                
                gidilecekHedef.seçilenbilgilerim="Efes Müzesi, Türkiye'nin İzmir iline bağlı Selçuk'ta bulunan bir müze. Yakınlarında bulunan Efes kazı alanındaki buluntulara ev sahipliği yapmaktadır. En bilinen eser, Efes'teki Artemis Tapınağı'nda bulunan Artemis heykelidir. Müze, arkeoloji ve etnografya olarak iki bölüme ayrılmaktadır."
                
            }
            if gidilecekHedef.seçilenşehir=="Ulucanlar"{
                
                gidilecekHedef.seçilenbilgilerim="Ankara Merkez Kapalı Ceza ve Tutukevi veya Ulucanlar Cezaevi, 1925 ve 2006 yılları arasında Ankara'nın Altındağ ilçesinin Ulucanlar semtinde faaliyet göstermiş olan bir cezaevidir."
                
            }
            if gidilecekHedef.seçilenşehir=="ZeugmaMozaik"{
                
                gidilecekHedef.seçilenbilgilerim="Zeugma Mozaik Müzesi, 9 Eylül 2011 tarihinde Gaziantep'te açılan ve 1700 metrekarelik mozaik ile dünyanın ikinci büyük mozaik müzesi olma özelliğini taşıyan müzedir."
                
            }
            
            
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            
            self.kentselDiziler.remove(at: indexPath.row)
            self.kentselGörüntüler.remove(at: indexPath.row)
            self.tabloGörünümü.deleteRows(at: [indexPath], with:.fade)
            
        }
        
    }
    
    
}


