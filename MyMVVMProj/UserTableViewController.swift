//
//  UserTableViewController.swift
//  MyMVVMProj
//
//  Created by cho on 2/23/24.
//

import UIKit

class UserTableViewController: UITableViewController {

    let viewModel = UserViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text = viewModel.cellForRowAt(indexPath).name
        cell.detailTextLabel?.text = "\(viewModel.cellForRowAt(indexPath).age)"
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection()
    }


}
