# Push Notifications Base Project

This Xcode 10 project is ready to test and implement Push notifications.

## Code examples

### UIViewController.extension.swift

* getNotificationSettings() :
* requestNotificationAuthorization() :

### AppDelegate.extension.swift

* func application(
        _ application: UIApplication,
        didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
        ) 
    
* func application(
        _ application: UIApplication,
        didFailToRegisterForRemoteNotificationsWithError error: Error) 
        
* func application(
        _ application: UIApplication,
        didReceiveRemoteNotification userInfo: [AnyHashable: Any],
        fetchCompletionHandler completionHandler:
        @escaping (UIBackgroundFetchResult) -> Void
        ) 
        

