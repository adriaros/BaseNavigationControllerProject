//
//  SceneDelegate.swift
//  BaseNavigationControllerProject
//
//  Created by Adrià Ros on 17/6/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator: Coordinator
    var rootViewController: UIViewController
    
    override init() {
        let rootVC = UIViewController()
        rootVC.view.backgroundColor = .systemGray
        rootViewController = UINavigationController(rootViewController: rootVC)
        coordinator = MainCoordinator(rootViewController: rootViewController)
    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        coordinator.start()
    }
}
