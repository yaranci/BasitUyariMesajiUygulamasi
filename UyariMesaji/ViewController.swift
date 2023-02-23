//
//  ViewController.swift
//  UyariMesaji
//
//  Created by imrahor on 30.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signupTiklandi(_ sender: Any) {
        
        if emailText.text == "" {
            print("email girilmedi")
            hataMesajlari("Hata Mesajı", "email girilmedi")
        }
        else if passwordText.text == "" {
            print("parola girilmedi")
            hataMesajlari("Hata Mesajı", "parola girilmedi")
        }
        else if passwordText.text != password2Text.text {
            print("parola kontrol et")
            hataMesajlari("Hata Mesajı", "parola kontrol et")
        }
        else {
            print("kayıt başarılı")
            hataMesajlari("Tebrikler!", "kayıt başarılı")
        }
        
    }
    func hataMesajlari(_ title:String, _ mesaj:String) {
        let uyariMesaji = UIAlertController(title: title, message: mesaj, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive) { UIAlertAction in
            print("OK tık")
        }
    
        uyariMesaji.addAction(okButton)
        self.present(uyariMesaji, animated: true)
    }
}

