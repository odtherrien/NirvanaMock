//
//  AppDelegate.swift
//  NirvanaMock
//
//  Created by Olivier Dupont-Therrien on 2018-07-16.
//  Copyright © 2018 BLIQc. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var indicator: NSProgressIndicator!
    
    var controller: UltimaController?
    
    override init() {
        super.init()
        self.controller = UltimaController()
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        indicator.startAnimation(nil)
        
        let viewController = UltimaViewController(nibName: NSNib.Name(rawValue: "UltimaView"), bundle: Bundle.main)
        
        // Option #1
//        window.contentViewController = viewController
        
        // Option #2
        window.contentView = viewController.view
        
        controller?.set(viewController: viewController)
        indicator.stopAnimation(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        self.controller = nil
    }
}

