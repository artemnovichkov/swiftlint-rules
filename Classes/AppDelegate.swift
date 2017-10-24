//
//  Copyright © 2017 artemnovichkov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        if let appInfo = Bundle.main.infoDictionary,
            let shortVersionString = appInfo["CFBundleShortVersionString"] as? String,
            let bundleVersion = appInfo["CFBundleVersion"] as? String {
            let appVersion = "\(shortVersionString) (\(bundleVersion))"
            UserDefaults.standard.appVersion = appVersion
        }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

fileprivate extension UserDefaults {
    
    var appVersion: String? {
        get { return string(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }
}

enum Numbers {
    case one(Int, Int)
    case two(Int, Int), three(Int, Int)
    case four, five
    case six, seven(Int, Int)
    case eight
}
