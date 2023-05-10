//
//  CreateCompanyController.swift
//  IntermediateTraining
//
//  Created by Alberto Garcia on 09/05/23.
//

import UIKit

final class CreateCompanyController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Create Company"
        navigationItem.leftBarButtonItem = UIBarButtonItem(systemItem: .cancel,
                                                           primaryAction: .init(handler: didTapCancel))
        
        view.backgroundColor = .darkBlue
    }
    
    private func didTapCancel(_ action: UIAction) {
        dismiss(animated: true)
    }
}
