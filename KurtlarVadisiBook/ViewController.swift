//
//  ViewController.swift
//  KurtlarVadisiBook
//
//  Created by ELİF BEYZA SAĞLAM on 17.07.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var myKurtlar = [Kurtlar]()
    var chosenKurtlar : Kurtlar?
    
    
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    let polat = Kurtlar(kurtlarName: "Polat ALEMDAR", kurtlarJob: "Bir çocuk babasız büyür ama anasız büyüyemez. Bizim bir tane anamız var o da vatan!", kurtlarImage: UIImage(named: "polat")!)

    let elif = Kurtlar(kurtlarName: "Elif EYLÜL ", kurtlarJob: "Aşk tren garında el salladığım iki kömür gözdü… Yandı gitti...!", kurtlarImage: UIImage(named: "elif")!)
   
    let süleyman = Kurtlar(kurtlarName: "Süleyman ÇAKIR", kurtlarJob: "Her şeyin, zamanı var; yaşamanın, sevmenin, hatta ölmenin bile...", kurtlarImage: UIImage(named: "süleyman")!)
    
    let memati = Kurtlar(kurtlarName: "Memati BAŞ", kurtlarJob: "Atasını tanımayan, it peşinde gezer!", kurtlarImage: UIImage(named: "memati")!)
    
    let derya = Kurtlar(kurtlarName: "Derya ÇAKIR", kurtlarJob: "Asla birilerinin umudunu kırma belkide sahip oldukları tek şey o'dur.", kurtlarImage: UIImage(named: "derya")!)
   
    
        myKurtlar.append(polat)
        myKurtlar.append(elif)
        myKurtlar.append(süleyman)
        myKurtlar.append(memati)
        myKurtlar.append(derya)
        
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell()
        cell.textLabel?.text = myKurtlar[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myKurtlar.count
        
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenKurtlar = myKurtlar[indexPath.row]
        self.performSegue(withIdentifier: "todetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedKurtlar = chosenKurtlar
            
            
      }
    }
}

