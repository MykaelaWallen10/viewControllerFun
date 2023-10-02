//
//  ViewController.swift
//  viewControllerFun
//
//  Created by MYKAELA WALLEN on 9/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldoUtlet: UITextField!
    
    var pony = "LALALA"
    
//happens once
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.yellow
    }
    
    //happens whenever the screen appears 
    override func viewWillAppear(_ animated: Bool) {
       // view.backgroundColor = UIColor.systemPink
    }
    
    

    @IBAction func manualAction(_ sender: UIButton) {
        
        print("hi")
        
        view.backgroundColor = UIColor.brown
        pony = textFieldoUtlet.text!
        
        performSegue(withIdentifier: "toRed", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //nvc = next view controller
        //getting access to the next view controller (the one your going to)
        //constant, segue is the local variable made in the function, as! is a downcast, ! garuntees that it will work
        let nvc = segue.destination as! ViewController2
        // need to make a variable in the other class that can accept the information that we are going to send
        
        nvc.name = pony
        
    }
    
}

