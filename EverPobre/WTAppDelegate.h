//
//  WTAppDelegate.h
//  EverPobre
//
//  Created by Hawer Torres on 9/05/13.
//  Copyright (c) 2013 Widetech. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AGTCoreDataStack;

@interface WTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) AGTCoreDataStack *model;

@end
