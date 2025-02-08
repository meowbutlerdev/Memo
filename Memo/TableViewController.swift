//
//  TableViewController.swift
//  Memo
//
//  Created by 박지성 on 2/7/25.
//

import UIKit

class TableViewController: UITableViewController {
    var memos: [String] = []
    
    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "새 메모", message: "메모를 입력하세요.", preferredStyle: .alert)
        
        alert.addTextField { textField in textField.placeholder = "내용" }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let add = UIAlertAction(title: "추가", style: .default) { _ in
            if let text = alert.textFields?.first?.text, !text.isEmpty {
                self.memos.append(text)
                self.tableView.reloadData()
                self.saveMemo()
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(add)
        
        present(alert, animated: true, completion: nil)
    }
    
    func saveMemo() {
        UserDefaults.standard.set(self.memos, forKey: "memos")
    }
    
    func loadMemo() {
        if let savedMemos = UserDefaults.standard.array(forKey: "memos") as? [String] {
            self.memos = savedMemos
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadMemo()
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
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            memos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            saveMemo()
        }
    }
}
