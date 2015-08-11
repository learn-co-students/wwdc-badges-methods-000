//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

    - (NSString *)makeBadgeForSpeaker:(NSString *)speakers; {
        
        NSMutableString *greetings = [@"Hello, my name is" mutableCopy];
        [greetings appendFormat:@" %@.", speakers];
        return greetings;
}

    - (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers; {


        
        for (NSUInteger i = 0; i < 8; i++) {
        
            NSString *name = speakers[i];
            NSMutableString *greetings = [@"Hello, my name is" mutableCopy];
            [greetings appendFormat:@" %@.", name];
        
            NSMutableArray *allBadges = [NSMutableArray array];
            [allBadges addObject:greetings];
        
            return allBadges;
        }
       return nil;
  
}
 

    - (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers; {
    return nil;
}

@end
