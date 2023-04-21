//
//  tableViewController.swift
//  Starter
//
//  Created by Chan Myae Thu on 19/03/2023.
//

import UIKit

class TableViewController: UIViewController{
    

    @IBOutlet weak var tableViewContent: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Connect tableViewCells to Table View
        tableViewContent.dataSource = self
        tableViewContent.register(UINib(nibName: String(describing: Sample1TableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: Sample1TableViewCell.self))
        tableViewContent.register(UINib(nibName: String(describing: Sample2TableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: Sample2TableViewCell.self))
    }
}

//add table view cells to data source
extension TableViewController : UITableViewDataSource{
    //sample1 ,sample2
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    //number of rows(2*5=10)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Sample1TableViewCell.self), for: indexPath) as? Sample1TableViewCell else{
                return UITableViewCell()
            }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Sample2TableViewCell.self), for: indexPath) as? Sample2TableViewCell else{
                return UITableViewCell()
            }
            return cell
        default:
            return UITableViewCell()
        }
        
    }
    
    
}
