//
//  AppDelegate.swift
//  ChulBong
//
//  Created by 김민석 on 2023/09/22.
//

import SwiftUI

import FirebaseCore

public class AppDelegate: NSObject, UIApplicationDelegate {
    public func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
