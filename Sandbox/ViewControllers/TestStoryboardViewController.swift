//
//  TestStoryboardViewController.swift
//  Sandbox
//
//  Created by Kenta Hara on 2021/11/21.
//

import UIKit

class TestStoryboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    static func create() -> TestStoryboardViewController {
        return UIStoryboard(name:"Main", bundle: nil).instantiateViewController(identifier: "TestViewController")
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
