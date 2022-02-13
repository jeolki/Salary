//
//  SceneDelegate.swift
//  Wolgeup
//
//  Created by Jeonggi Hong on 2022/02/11.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
     
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .systemBackground
        window?.rootViewController = SettingViewController()
        window?.tintColor = .white
        window?.makeKeyAndVisible()
    }

}

