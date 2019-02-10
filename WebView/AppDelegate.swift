//
//  Convertify.app
//  Convertify for iOS 4.9 (Swift)
//

import UIKit
import UserNotifications
import OneSignal
import GoogleMobileAds

var registerlocalpush = "true"  //set to "true" to ask user for push notication permission in general

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        if Constants.kPushEnabled
        {
            let onesignalInitSettings = [kOSSettingsKeyAutoPrompt: true]
            
  
            OneSignal.initWithLaunchOptions(launchOptions,
                                            appId: "c7434486-f831-43c5-8ea1-c1fa849a59f9", //OneSignal APP ID
                                            handleNotificationAction: nil,
                                            settings: onesignalInitSettings)
            
            OneSignal.inFocusDisplayType = OSNotificationDisplayType.notification;
        }
        GADMobileAds.configure(withApplicationID: "YOUR_ADMOB_APP_ID")
        /*
        // Recommend moving the below line to prompt for push after informing the user about
        //   how your app will use them.
        OneSignal.promptForPushNotifications(userResponse: { accepted in
            print("User accepted notifications: \(accepted)")
        })
        */
        /*
        if registerlocalpush.isEqual("true")
        {
            if application.responds(to: #selector(getter: application.isRegisteredForRemoteNotifications))
            {
                if #available(iOS 10.0, *)
                {
                    UNUserNotificationCenter.current().requestAuthorization(options: [.sound, .alert, .badge]) {(accepted, error) in
                        if !accepted {
                            print("Notification access denied.")
                        }
                    }
                }
                else
                {
                    application.registerUserNotificationSettings(UIUserNotificationSettings(types: ([.sound, .alert, .badge]), categories: nil))
                    application.registerForRemoteNotifications()
                }
            }
            else
            {
                application.registerForRemoteNotifications(matching: ([.badge, .alert, .sound]))
            }
        }*/
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
    }
    
    
}
