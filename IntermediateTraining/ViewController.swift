//
//  ViewController.swift
//  IntermediateTraining
//
//  Created by Alberto Garcia on 07/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupNavBar()
    }
    
    private func setupView() {
        view.backgroundColor = .white
    }

    private func setupNavBar() {
        let lightRed = UIColor(red: 247 / 255,
                               green: 66 / 255,
                               blue: 82 / 255,
                               alpha: 1)
        
        navigationItem.title = "Companies"
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = lightRed
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus.app.fill"),
                                                            style: .plain,
                                                            target: self,
                                                            action: #selector(didTapAddCompany))
        
        
    }
    
    @objc
    private func didTapAddCompany() {
        
    }
}

