//
//  AlertControllerv.swift
//  ToDoList2
//
//  Created by Петя on 01.02.2024.
//

import UIKit

class AlertController: UIAlertController {
    
    func action(task: Task?, completion: @escaping (String) -> Void) {
        let saveAction = UIAlertAction(title: "Save", style: .default) { _ in
            guard let newValue = self.textFields?.first?.text else { return }
            guard !newValue.isEmpty else { return }
            completion(newValue)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        addAction(saveAction)
        addAction(cancelAction)
        addTextField { textField in
            textField.placeholder = "Введите текст"
            textField.text = task?.name
        }
    }
}
