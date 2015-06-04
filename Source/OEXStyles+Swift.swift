//
//  OEXStyles+Swift.swift
//  edX
//
//  Created by Ehmad Zubair Chughtai on 25/05/2015.
//  Copyright (c) 2015 edX. All rights reserved.
//

import Foundation
import UIKit

extension OEXStyles {
    
    var navigationTitleTextStyle : OEXTextStyle {
        return OEXTextStyle(font: .ThemeSansBold, size: 17.0, color : navigationItemTintColor())
    }
    
    var navigationButtonTextStyle : OEXTextStyle {
        return OEXTextStyle(font: .ThemeSansBold, size: 14.0, color : navigationItemTintColor())
    }
    
    public func applyGlobalAppearance() {
        
        if (OEXConfig.sharedConfig().shouldEnableNewCourseNavigation()) {
            //Probably want to set the tintColor of UIWindow but it didn't seem necessary right now
            
            UINavigationBar.appearance().barTintColor = navigationBarColor()
            UINavigationBar.appearance().tintColor = navigationItemTintColor()
            UINavigationBar.appearance().translucent = false
            UINavigationBar.appearance().titleTextAttributes = navigationTitleTextStyle.attributes
            UIBarButtonItem.appearance().setTitleTextAttributes(navigationButtonTextStyle.attributes, forState: .Normal)
            UIBarButtonItem.appearance().setTitleTextAttributes(navigationButtonTextStyle.attributes, forState: .Normal)
            // Hide back button text. Don't have enough room for it
            // TODO: Hide only on iPhone
            UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffsetMake(0, -100), forBarMetrics: .Default)
            
            UIToolbar.appearance().barTintColor = navigationBarColor()
            
            UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: false)
        }
        
        
    }
}