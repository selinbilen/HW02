//
//  ViewController.swift
//  hw02
//
//  Created by selin eylül bilen on 2/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var symbol: UILabel!
    @IBOutlet weak var num2: UITextField!

    
    var resultFin = ""
    func sayılar()-> (num1: Int, num2: Int){
        //isaret.isHidden = true
        if let num1 = Int(num1.text!), let num2 = Int(num2.text!){
            return (num1,num2)
        }
        else{
            print("HATA")
            return (0,0)
        }
        
    }
    
    @IBAction func minus(_ sender: UIButton) {
        symbol.text = "-"
        let sayı = sayılar()
        let result = sayı.num1 - sayı.num2
        resultFin = String(result)
        performSegue(withIdentifier: "sum", sender: self)
    }
    @IBAction func divide(_ sender: UIButton) {
        symbol.text = "÷"
        let sayı = sayılar()
        let result = sayı.num1 / sayı.num2
        resultFin = String(result)
        performSegue(withIdentifier: "sum", sender: self)
    }
    
    @IBAction func multiply(_ sender: Any) {
        symbol.text = "x"
        let sayı = sayılar()
        let result = sayı.num1 * sayı.num2
        resultFin = String(result)
        performSegue(withIdentifier: "sum", sender: self)
    }
    
    @IBAction func sum(_ sender: UIButton) {
        symbol.text = "+"
        let sayı = sayılar()
        let result = sayı.num1 + sayı.num2
        resultFin = String(result)
        performSegue(withIdentifier: "sum", sender: self)
    }
    
    @IBAction func clear(_ sender: UIButton) {
        symbol.text = ""
        num1.text = ""
        num2.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Sum
        vc.finalNum = self.resultFin
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

