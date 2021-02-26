//
//  Sum.swift
//  hw02
//
//  Created by selin eylül bilen on 2/25/21.
//

import UIKit

class Sum: UIViewController {

    @IBOutlet weak var sumResult: UILabel!
    
    var finalNum = ""
    
    override func viewDidLoad() {
        print(finalNum)
        sumResult.text = finalNum
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
