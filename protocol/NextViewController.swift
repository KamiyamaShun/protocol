//
//  NextViewController.swift
//  protocol
//
//  Created by 神山駿 on 2021/02/15.
//

import UIKit

protocol CatchProtocol {
    func catchData(count: Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var countText: UILabel!
    
    var num = 0
    
    var deligate:CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func count(_ sender: Any) {
        num += 1
        countText.text = String(num)
    }
    
    @IBAction func back(_ sender: Any) {
        deligate?.catchData(count: num)
        dismiss(animated: true, completion: nil)
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
