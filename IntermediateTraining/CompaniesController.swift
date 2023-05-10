//
//  CompaniesController.swift
//  IntermediateTraining
//
//  Created by Alberto Garcia on 07/05/23.
//

import UIKit

final class CompaniesController: UITableViewController {
    
    let companies = [
        Company(name: "Apple", founded: Date()),
        Company(name: "Google", founded: Date()),
        Company(name: "Meta", founded: Date())
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        setupTableView()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        companies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = .tealColor
        
        let company = companies[indexPath.row]
        
        cell.textLabel?.text = company.name
        cell.textLabel?.font = .boldSystemFont(ofSize: 16)
        cell.textLabel?.textColor = .white
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .lightBlue
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }

    private func setupNavBar() {
        navigationItem.title = "Companies"
        
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "plus"),
                                                            style: .plain,
                                                            target: self,
                                                            action: #selector(didTapAddCompany))
        
    }
    
    private func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        tableView.backgroundColor = .darkBlue
        tableView.tableFooterView = UIView()
        tableView.separatorColor = .white
        tableView.sectionHeaderTopPadding = 0.0
    }
    
    @objc
    private func didTapAddCompany() {
        let createCompanyController = CreateCompanyController()
        
        let navController = NavigationController(rootViewController: createCompanyController)
        navController.modalPresentationStyle = .fullScreen
        
        present(navController, animated: true)
    }
}

