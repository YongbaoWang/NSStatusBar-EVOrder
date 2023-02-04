//
//  AppDelegate.swift
//  NSStatusBar-EVOrder
//
//  Created by YongBaowang on 02/04/2023.
//  Copyright (c) 2023 YongBaowang. All rights reserved.
//

import Cocoa
import NSStatusBar_EVOrder

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    private var appIconItem: NSStatusItem?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application

        // Customize the system status bar icon
        let item = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength, priority: .system)
        item.autosaveName = NSStatusItem.AutosaveName("com.demo.systemItem.\(arc4random() % 100000)")
        item.button?.image = NSImage(named: NSImage.Name(rawValue: "demo"))
        
        appIconItem = item
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}
