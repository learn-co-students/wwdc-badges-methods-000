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

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return badge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges = [NSMutableArray array];

    for (NSUInteger i = 0; i < [speakers count]; i++ ) {
        NSString *badge = [self badgeForSpeaker:speakers[i]];
        [badges addObject:badge];
    }
    
    return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *greetings = [NSMutableArray array];
    
//    Welcome, Adele Goldberg! You'll be in dressing room 1.
    
    for (NSUInteger i = 0; i < [speakers count]; i++ ) {
        NSUInteger roomNumber = i + 1;
        NSString *greeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], (unsigned long)roomNumber];
        [greetings addObject:greeting];
    }
    
    return greetings;
}

@end
