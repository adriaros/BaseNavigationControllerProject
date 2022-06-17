//
//  Coordinator.swift
//  BaseNavigationControllerProject
//
//  Created by Adrià Ros on 17/6/22.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController? { get set }
    func start()
}
