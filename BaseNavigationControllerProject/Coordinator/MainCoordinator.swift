//
//  MainCoordinator.swift
//  BaseNavigationControllerProject
//
//  Created by Adrià Ros on 17/6/22.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController?
    
    init(rootViewController: UIViewController) {
        self.navigationController = rootViewController.navigationController
    }
    
    func start() {
        
    }
}
