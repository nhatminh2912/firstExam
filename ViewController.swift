//
//  ViewController.swift
//  toanhoc
//
//  Created by ios on 11/9/16.
//  Copyright © 2016 ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var signLbl: UILabel!
    @IBOutlet weak var lbl_p1: UILabel!
    @IBOutlet weak var lbl_p2: UILabel!
    @IBOutlet weak var btn_b1: UIButton!
    @IBOutlet weak var btn_b2: UIButton!
    @IBOutlet weak var btn_b3: UIButton!
    @IBAction func btn_act(_ sender: UIButton) {
        setRandom()
    }
    func setRandom() {
        let random1 = Int(arc4random_uniform(4)) + 1
        let random2 = Int(arc4random_uniform(4)) + 1
        //        print("\(random1) \(random2)")
        lbl_p1.text = String(random1)
        lbl_p2.text = String(random2)
        setResult(randomA: random1, randomB: random2)
    }
    //22
    //1
    // * -
    // * +
    // * /
    // + -
    // - /
    //3 4
    //Hien thi ket qua
    // tinh ket  - (1 2 3)
    // ketqua + - 1 so nao day
    func setResult(randomA: Int, randomB: Int)
    {   let randompt = Int(arc4random_uniform(4))
        
        let randomvt = Int(arc4random_uniform(3))
        if randompt == 0 {
            
            signLbl.text = "+"
        }
        else if randompt == 1 {
            
            signLbl.text = "-"
        }
        else if randompt == 2 {
            
            signLbl.text = "x"
        }
        else {
            
            signLbl.text = ":"
        }
        // tinh ket qua 
        //1
        // 2 +2 = 4 
        //4 5 3
        if randomvt == 0 {
            if randompt == 0 { //+
                btn_b1.setTitle(String(sum(p1: randomA, p2: randomB)) , for: .normal)
                btn_b2.setTitle(String(sum(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 1)) , for: .normal)
                btn_b3.setTitle(String(sum(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 1)) , for: .normal)
            }
            else if  randompt == 1 { //-
                btn_b1.setTitle(String(sub(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 1)) , for: .normal)
                btn_b2.setTitle(String(sub(p1: randomA, p2: randomB)) , for: .normal)
                btn_b3.setTitle(String(sub(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 1)) , for: .normal)
            }
            else if  randompt == 2 {//*
                btn_b1.setTitle(String(multi(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 1)) , for: .normal)
                btn_b2.setTitle(String(multi(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 1)) , for: .normal)
                btn_b3.setTitle(String(multi(p1: randomA, p2: randomB)) , for: .normal)
            }
            else if  randompt == 3 { // /
                btn_b1.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB)) , for: .normal)
                btn_b2.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) - Float(arc4random_uniform(4) + 1)) , for: .normal)
                btn_b3.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) + Float(arc4random_uniform(4) + 1)) , for: .normal)
            }
        }
        else if randomvt == 1 {
            
            if randompt == 0 {
                btn_b1.setTitle(String(sum(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 2)) , for: .normal)
                btn_b2.setTitle(String(sum(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 2)) , for: .normal)
                btn_b3.setTitle(String(sum(p1: randomA, p2: randomB)) , for: .normal)
            }
            else if  randompt == 1 {
                btn_b1.setTitle(String(sub(p1: randomA, p2: randomB)) , for: .normal)
                btn_b2.setTitle(String(sub(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 2)) , for: .normal)
                btn_b3.setTitle(String(sub(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 2)) , for: .normal)
            }
            else if  randompt == 2 {
                btn_b1.setTitle(String(multi(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 2)) , for: .normal)  //0.75
                btn_b2.setTitle(String(multi(p1: randomA, p2: randomB)) , for: .normal) //-1
                btn_b3.setTitle(String(multi(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 2)) , for: .normal) //12
            }
            else if  randompt == 3 {
                btn_b1.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) + Float(arc4random_uniform(4) + 2)) , for: .normal)
                btn_b2.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB)) , for: .normal)
                btn_b3.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) - Float(arc4random_uniform(4) + 2)) , for: .normal)
            }
        }
        else if randomvt == 2 {
            if randompt == 0 {
                btn_b1.setTitle(String(sum(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 3)) , for: .normal)
                btn_b2.setTitle(String(sum(p1: randomA, p2: randomB)) , for: .normal)
                btn_b3.setTitle(String(sum(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 3)) , for: .normal)
            }
            else if randompt == 1 {
                btn_b1.setTitle(String(sub(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 3) ) , for: .normal)
                btn_b2.setTitle(String(sub(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 3)) , for: .normal)
                btn_b3.setTitle(String(sub(p1: randomA, p2: randomB)) , for: .normal)
            }
            else if  randompt == 2 {
                btn_b1.setTitle(String(multi(p1: randomA, p2: randomB)) , for: .normal)
                btn_b2.setTitle(String(multi(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 3)) , for: .normal)
                btn_b3.setTitle(String(multi(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 3)) , for: .normal)
            }
            else if  randompt == 3 {
                btn_b1.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) + Float(arc4random_uniform(4) + 3)) , for: .normal)
                btn_b2.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) - Float(arc4random_uniform(4) + 3)) , for: .normal)
                btn_b3.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB)) , for: .normal)
            }
        }
        
        //        print("randompt = \(randompt)")
        if randompt == 0 {
            
            signLbl.text = "+"
        }
        else if randompt == 1 {
            
            signLbl.text = "-"
        }
        else if randompt == 2 {
            
            signLbl.text = "x"
        }
        else {
            
            signLbl.text = ":"
        }
    }
    
    
    //Tinh tong
    func sum(p1: Int, p2: Int) -> Int
    {
        return p1+p2;
    }
    
    func sub(p1: Int, p2: Int) -> Int
    {
        return p1-p2;
    }
    func multi(p1: Int, p2: Int) -> Int{
        return p1*p2
    }
    func div(p1: Int, p2: Int) -> Float{
        //print("ket nqua \(Float(p1)/Float(p2))")
        return Float(p1)/Float(p2)
    }
}
