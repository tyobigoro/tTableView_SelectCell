//
//  ViewController.swift
//  tTableView_SelectCell
//
//  Created by tyobigoro_i on 2019/11/12.
//  Copyright © 2019 tyobigoro_i. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tTableView: UITableView!
    
    var array: [Int] = [1, 2, 3, 4]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "Cell", bundle: Bundle.main)
        tTableView.register(nib, forCellReuseIdentifier: "Cell")
        
        tTableView.isEditing = true
        tTableView.allowsMultipleSelectionDuringEditing = true
        
        
    }


}


extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        
        let str = String(format: "%02d", array[indexPath.row])
        
        cell.setCell(str: str)
        
        return cell
        
    }
    
    // indicateEditButton
    func tableView(
        _ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) ->UITableViewCell.EditingStyle
    {
        return UITableViewCell.EditingStyle.init(rawValue: 3)!
    }
    
    // spaceOfEditIco
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPaht: IndexPath) -> Bool {
        return true
    }
    
    
    
}
