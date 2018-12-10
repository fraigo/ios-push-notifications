//
//  UIViewController.extension.swift
//  ios-push-notifications
//
//  Created by Francisco Igor on 2018-12-07.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit
import UserNotifications

extension UIViewController {
    
    func getNotificationSettings() {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            print("User Notification settings: \(settings)")
            guard settings.authorizationStatus == .authorized else { return }
            DispatchQueue.main.async {
                UIApplication.shared.registerForRemoteNotifications()
            }
        }
    }
    
    func requestNotificationAuthorization(){
        // Request for permissions
        UNUserNotificationCenter.current()
            .requestAuthorization(
            options: [.alert, .sound, .badge]) {
                [weak self] granted, error in
                print("Notification granted: \(granted)")
                guard granted else { return }
                self?.getNotificationSettings()
        }
    }
    
    func userNotification(message: String, title: String, count: Int){
        //creating the notification content
        let content = UNMutableNotificationContent()
        content.title = title
        content.subtitle = ""
        content.body = message
        content.badge = count as NSNumber
        //getting the notification trigger
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        //getting the notification request
        let request = UNNotificationRequest(identifier: "SimplifiedIOSNotification", content: content, trigger: trigger)
        //adding the notification to notification center
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    func clearNotification(){
        UIApplication.shared.applicationIconBadgeNumber = 0
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
        
    }
    
}
