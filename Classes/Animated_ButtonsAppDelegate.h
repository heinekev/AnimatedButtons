//
//  Animated_ButtonsAppDelegate.h
//  Animated Buttons
//
//  Created by Kevin Anderson on 3/17/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Animated_ButtonsViewController;

@interface Animated_ButtonsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Animated_ButtonsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Animated_ButtonsViewController *viewController;

@end

