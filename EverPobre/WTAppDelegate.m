//
//  WTAppDelegate.m
//  EverPobre
//
//  Created by Hawer Torres on 9/05/13.
//  Copyright (c) 2013 Widetech. All rights reserved.
//

#import "WTAppDelegate.h"
#import "AGTCoreDataStack.h"
#import "WTNotebook.h"
#import "WTNote.h"
@implementation WTAppDelegate

-(void)trastearConDatos {
    
    //creamos unos objetos
    WTNotebook *nb = [WTNotebook notebookInContext:self.model.context];
    WTNotebook *nb2 = [WTNotebook notebookInContext:self.model.context];
    
    NSLog(@"Notebook : %@", nb);
    NSLog(@"Notebook : %@", nb2);
    
    nb.name = @"Nueva libreta";
    
    //creamos las notas
    
    WTNote *note = [WTNote noteInNotebook:nb withContext: self.model.context];
    NSLog(@"Nota: %@ ", note);
    
    //buscamos
    
    NSFetchRequest *request= [[NSFetchRequest alloc]initWithEntityName:[WTNotebook entityName]];
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES],[NSSortDescriptor sortDescriptorWithKey:@"creation_date" ascending:NO]];
    NSError *err = nil;
    NSArray *results = [self.model.context executeFetchRequest:request error:&err];
    if(results == nil){
        NSLog(@"Error al buscar: %@", err);
    }
    
    NSLog(@"Librerias: %@", results);
    NSLog(@"Total: %d", [results count]);
    
    

    
    
    
    //Guardamos objetos
    [self.model saveWithErrorBlock:^(NSError *error) {
        NSLog(@"La cagamos %@",error);
    }];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //inicaliza el modelo (CoreDataStack)
    self.model = [AGTCoreDataStack coreDataStackWithModelName:@"Model"];
    
    [self trastearConDatos];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
