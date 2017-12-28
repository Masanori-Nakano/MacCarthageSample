//
//  MainWindowController.swift
//  WebViewSample
//
//  Created by Masanori Nakano on 2017/12/27.
//  Copyright © 2017年 Masanori Nakano. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    // MARK: - NSWindowController
    
    override var windowNibName: NSNib.Name? {
        return NSNib.Name(rawValue: "MainWindowController")
    }

    override func windowWillLoad() {
        super.windowWillLoad()
        
        self.contentViewController = ViewController()
    }

}
