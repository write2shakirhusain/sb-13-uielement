//
//  ViewController.swift
//  UIElement
//
//  Created by Shakir Husain on 14/10/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtFieldItem: UITextField!
    
    @IBOutlet weak var tblView: UITableView!
    var itemList:[String] = []
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblView.dataSource = self
    }

    @IBAction func didClickOnAddItem(_ sender: UIButton) {
        
        guard let text = txtFieldItem.text , text.count > 0 else {
            return
        }
        itemList.append(text)
        txtFieldItem.text = ""
        tblView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTblCell") as? ItemTblCell else {
            return UITableViewCell()
        }
        
        cell.lblName.text = itemList[indexPath.row]
        return cell
    }

    
}

