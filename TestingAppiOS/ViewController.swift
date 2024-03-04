//
//  ViewController.swift
//  TestingAppiOS
//
//  Created by Nunu Nugraha on 04/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtInput: UITextField!
    var observable: Observable<String>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // inisialisasi observable dengan data awal
        observable = Observable(value: "Data Awal")
        
        // inisialisasi subcriber dan setup data observable menggunakan datasubcribe
        let dataSubcribe = Subcriber()
        observable?.addObserver(dataSubcribe)
        
        let dataSubcribe2 = Subcriber2()
        observable?.addObserver(dataSubcribe2)
    }
    
    @IBAction func btnSend(_ sender: Any) {
        observable?.value = "\(String(describing: txtInput.text))"
        txtInput.text = ""
    }
    
}


protocol Observer {
    func update<T>(with newValue: T)
}

class Observable<T> {
    var value: T {
        didSet {
            observers.forEach { $0.update(with: value) }
        }
    }
    
    private var observers: [Observer] = []
    
    init(value: T) {
        self.value = value
    }
    
    func addObserver(_ observer: Observer) {
        observers.append(observer)
    }
}

// class subcriber
class Subcriber: Observer {
    func update<T>(with newValue: T) {
        print("Dapatkan data terbaru \(newValue)")
    }
}

class Subcriber2: Observer {
    func update<T>(with newValue: T) {
        print("Ini Subcriber 2, Dapatkan data terbaru \(newValue)")
    }
    
}
