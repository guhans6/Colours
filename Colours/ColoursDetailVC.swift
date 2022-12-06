//
//  ColoursDetailVC.swift
//  Colours
//
//  Created by guhan-pt6208 on 30/11/22.
//

import UIKit

class ColoursDetailVC: UIViewController {

    var colour: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colour ?? .white
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
