//
//  ViewController.swift
//  Alert
//
//  Created by HAQQQABD on 19/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private(set) var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func buttonTap(){
        let alert = UIAlertController(title: "Do the thing?", message: "let us know if you want to di thing", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

