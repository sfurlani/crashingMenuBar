//
//  AppDelegate.swift
//  CrashingMenuBar
//
//  Created by Stephen Furlani on 12/20/19.
//  Copyright © 2019 Stephen Furlani. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        configureAppearance()


        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    func configureAppearance() {
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: (UINavigationBar.appearance().tintColor as Any)]
        // navBar color for app
        UINavigationBar.appearance().barTintColor = UIColor.black
        // navBar color for some sharing containers…except MFMessageComposeVC & SLComposeVC (twitter)
        UINavigationBar.appearance().backgroundColor = UIColor.black
        // navBar color for MFMessageComposeVC & SLComposeVC
//        UINavigationBar.appearance().setBackgroundImage(UIImage(color: UIColor.black), for: .default)

        UIBarButtonItem.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).tintColor = UIColor.white

        UISearchBar.appearance().barTintColor = UIColor.black
        UISearchBar.appearance().tintColor = UIColor.white

        UIToolbar.appearance().tintColor = UIColor.black
        UISwitch.appearance().onTintColor = UIColor.red

        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().tintColor = UIColor.black
        UITextField.appearance().tintColor = UIColor.black
        UITextView.appearance().tintColor = UIColor.red
    }

}

