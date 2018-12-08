# Push Notifications Base Project

This Xcode 10 project is ready to test and implement Push notifications.

## Features

* Request and retrieve User Notification permissions
* Retrieve the Device Token to test Push Notifications
* Process incoming external Notifications
  * When the application launches after click on notification
  * When running the application
* Launch User Notifications from the application


## Code added to support Notifications

### UIViewController.extension.swift

* Added `getNotificationSettings()` to `UViewController`.
* Added `requestNotificationAuthorization()` to `UViewController`:

### AppDelegate.extension.swift

* func application(
        _ application: UIApplication,
        `didRegisterForRemoteNotificationsWithDeviceToken` deviceToken: Data
        ) 
    
* func application(
        _ application: UIApplication,
        `didFailToRegisterForRemoteNotificationsWithError` error: Error) 
        
* func application(
        _ application: UIApplication,
        `didReceiveRemoteNotification` userInfo: [AnyHashable: Any],
        fetchCompletionHandler completionHandler:
        @escaping (UIBackgroundFetchResult) -> Void
        ) 

### ViewController.swift

* Added `initialNotification : [String : AnyObject]` variable.
* Added `processNotification(aps: [String : AnyObject])` to process external notifications

### AppDelegate.swift

* func application(_ application: UIApplication, `didFinishLaunchingWithOptions` launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool




