//
//  TableViewController.swift
//  Memo
//
//  Created by 박지성 on 2/7/25.
//

import UIKit

class TableViewController: UITableViewController {
    let memos: [String] = ["Memo1", "Memo2", "Memo3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension TableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return memos.count
    }
    
    override func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoCell", for: indexPath)
        
        cell.textLabel?.text = memos[indexPath.row]
        
        return cell
    }
}
