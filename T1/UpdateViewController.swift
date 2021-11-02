//
//  UpdateViewController.swift
//  T1
//
//  Created by لمى فرحان on 27/03/1443 AH.
//

import UIKit

class UpdateViewController: UIViewController {
    var list : List!
    var selectedIndex : Int!
    
    @IBOutlet weak var TF1: UITextField!
    
    @IBAction func update(_ sender: Any) {
        list.items[selectedIndex] = Task(title: TF1.text!)
        navigationController?.popViewController(animated: true)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        TF1.text = list.items[selectedIndex].title
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        update.§§§= list.items[selectedIndex].title

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
