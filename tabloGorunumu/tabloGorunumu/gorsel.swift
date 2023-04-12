//
//  gorsel.swift
//  tabloGorunumu
//
//  Created by Bunyamin on 27.03.2023.
//

import UIKit

class gorsel: UIViewController {

    @IBOutlet weak var görüntüAdı: UILabel!
    
    @IBOutlet weak var bilgiler: UILabel!
    
    @IBOutlet weak var görselGörüntü: UIImageView!
    
    var seçilenşehir=""
    var seçilengörüntü=UIImage()
    var seçilenbilgilerim=""
    override func viewDidLoad() {
        super.viewDidLoad()

        görüntüAdı.text = seçilenşehir
        görselGörüntü.image = seçilengörüntü
        bilgiler.text=seçilenbilgilerim
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
