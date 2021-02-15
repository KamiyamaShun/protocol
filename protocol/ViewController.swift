//
//  ViewController.swift
//  protocol
//
//  Created by 神山駿 on 2021/02/15.
//

import UIKit

class ViewController: UIViewController,CatchProtocol {
    

    @IBOutlet weak var label: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func catchData(count: Int) {
        label.text = String(count)
    }

    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.deligate = self
    }
}

