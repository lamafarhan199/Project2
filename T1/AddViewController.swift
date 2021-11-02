//
//  AddViewController.swift
//  T1
//
//  Created by لمى فرحان on 26/03/1443 AH.
//

import UIKit

class AddViewController: UIViewController {
    var list : List!
    
    @IBOutlet weak var tf: UITextField!
    
    @IBAction func Addtaped(_ sender: Any) {
        createNewTask(userTitle: tf.text!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(list.items)
        createNewTask(userTitle: "Add is worked")
        // Do any additional setup after loading the view.
    }
    func createNewTask(userTitle: String){
        list.items.append(Task(title: userTitle))
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
