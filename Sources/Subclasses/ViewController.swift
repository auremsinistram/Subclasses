//
// ViewController.swift
//

#if os(iOS)

import UIKit
import PropertyWrappers

open class ViewController: UIViewController {
    
    // MARK: - Private static var
    
    private static var isFirstLaunchKey: String {
        return .isFirstLaunch + String(describing: self)
    }
    
    // MARK: - Private var
    
    @Store(ViewController.isFirstLaunchKey, true)
    private var isFirstLaunch: Bool
    
    private var isFirstAppear = true
    
    // MARK: - Open override func
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if isFirstAppear {
            firstViewDidAppear(animated, isFirstLaunch: isFirstLaunch)
            isFirstLaunch = false
            isFirstAppear = false
        }
    }
    
    // MARK: - Open func
    
    open func firstViewDidAppear(_ animated: Bool, isFirstLaunch: Bool) {
        // Empty.
    }
}

#endif
