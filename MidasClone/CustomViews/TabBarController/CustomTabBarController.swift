//
//  CustomTabBarController.swift
//  MidasClone
//
//  Created by Salih Gün on 22.03.2024.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        // Do any additional setup after loading the view.
    }
    
    private func configure() {
        UITabBar.appearance().backgroundColor  = Colors.backgroundColor
        UITabBar.appearance().tintColor = Colors.darkBlue
        UITabBar.appearance().unselectedItemTintColor = Colors.darkGray
        viewControllers = [createHomeNC(),createMarketsNC(),createDiscoverNC(),createSupportNC(),createProfileNC()]
    }
    
    func createHomeNC() -> UINavigationController {
      let homeNC = HomeViewController()
        homeNC.tabBarItem = UITabBarItem(title: "Ana Sayfa", image: Icons.home, tag: 0)
        return  UINavigationController(rootViewController: homeNC)
    }
    
    func createMarketsNC() -> UINavigationController {
      let marketsNC = MarketsViewController()
        marketsNC.tabBarItem = UITabBarItem(title: "Piyasalar", image: Icons.markets, tag: 1)
        return UINavigationController(rootViewController: marketsNC)
    }
    
    func createDiscoverNC() -> UINavigationController {
      let discoverNC = DiscoverViewController()
        discoverNC.tabBarItem = UITabBarItem(title: "Keşfet", image: Icons.discover, tag: 2)
        return UINavigationController(rootViewController: discoverNC)
    }
    
    func createSupportNC() -> UINavigationController {
      let supportNC = SupportViewController()
        supportNC.tabBarItem = UITabBarItem(title: "Destek", image: Icons.support, tag: 3)
        return UINavigationController(rootViewController: supportNC)
    }
    
    func createProfileNC() -> UINavigationController {
      let profileNC = ProfileViewController()
        profileNC.tabBarItem = UITabBarItem(title: "Profil", image: Icons.profile, tag: 4)
        return UINavigationController(rootViewController: profileNC)
    }

}
