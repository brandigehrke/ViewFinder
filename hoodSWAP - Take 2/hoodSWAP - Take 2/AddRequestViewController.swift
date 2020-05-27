//
//  AddRequestViewController.swift
//  hoodSWAP - Take 2
//
//  Created by Brandi Freeman on 5/27/20.
//  Copyright © 2020 Brandi Freeman. All rights reserved.
//

import UIKit

class AddRequestViewController: UIViewController {
    
    var previousVC = RequestTableViewController()

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBOutlet weak var dateTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func postRequestButton(_ sender: UIButton) {
//        let request = Request()
//
//        if let nameText = nameTextField.text {
//            request.name = nameText
//        }
//
//        if let itemText = itemTextField.text {
//            request.item = itemText
//        }
//
//        if let dateText = dateTextField.text {
//            request.date = dateText
//        }
//
//        previousVC.requests.append(request)
//        previousVC.tableView.reloadData()
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

        
        let request = RequestCD(entity: RequestCD.entity(), insertInto: context)

    
        if let nameText = nameTextField.text {
            request.name = nameText
        }
       if let itemText = itemTextField.text {
            request.item = itemText
        }
        if let dateText = dateTextField.text {
            request.date = dateText
        }
            
        try? context.save()
        
        navigationController?.popViewController(animated: true)
        }
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
    }


 
