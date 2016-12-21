//
//  ApplicationCoordinator.swift
//  Juice
//
//  Created by Brian Michel on 12/17/16.
//  Copyright © 2016 Brian Michel. All rights reserved.
//

import Foundation
import Sparkle

final class ApplicationCoordinator: NSObject {
    private let statusBarItemCoordinator = StatusBarItemCoordinator()
    
    override init() {
        super.init()
        statusBarItemCoordinator.start()
        SUUpdater.shared().automaticallyChecksForUpdates = true
        SUUpdater.shared().checkForUpdates(self)
    }
}
