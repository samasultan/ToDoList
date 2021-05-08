//
//  ToDoCell.swift
//  ToDoList
//
//  Created by user169313 on 5/8/21.

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    var delegate: ToDoCellDelegate?
    
    @IBAction func completeButtonTapped() {
        delegate?.checkmarkTapped(sender: self)
    }

}
