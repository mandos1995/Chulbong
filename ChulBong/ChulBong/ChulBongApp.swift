//
//  ChulBongApp.swift
//  ChulBong
//
//  Created by 김민석 on 2023/09/22.
//

import SwiftUI
import ChulBongSPM

@main
struct ChulBongApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
