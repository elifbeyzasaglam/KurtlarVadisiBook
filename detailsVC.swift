//
//  detailsVC.swift
//  KurtlarVadisiBook
//
//  Created by ELİF BEYZA SAĞLAM on 17.07.2022.
//

import UIKit

class detailsVC: UIViewController {

   @IBOutlet weak var imageView: UIImageView!
   @IBOutlet weak var nameLabel: UILabel!
   @IBOutlet weak var jobLabel: UILabel!
    
    var selectedKurtlar : Kurtlar?
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameLabel.text = selectedKurtlar?.name
        jobLabel.text = selectedKurtlar?.job
        imageView.image = selectedKurtlar?.image
        
    }
    

    

}
