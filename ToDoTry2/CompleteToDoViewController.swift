//
//  CompleteToDoViewController.swift
//  ToDoTry2
//
//  Created by Lavanya Goel on 7/1/21.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = TableViewController()
    var selectedToDo : ToDoCD?

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.text = selectedToDo?.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theToDo = selectedToDo {
                
              context.delete(theToDo)
              try? context.save()

              navigationController?.popViewController(animated: true)
            }
          }
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
