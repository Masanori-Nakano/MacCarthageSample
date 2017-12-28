//
//  AppDelegate.swift
//  MacCarthageSample
//
//  Created by Masanori Nakano on 2017/12/28.
//  Copyright © 2017年 Masanori Nakano. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    private let mainWindowController: MainWindowController = MainWindowController()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // ウィンドウの表示
        mainWindowController.showWindow(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

