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

- (NSString *)makeBadgeForSpeaker:(NSString *)speaker {
    NSString *welcome = [[NSString alloc] initWithFormat:@"Hello, my name is %@.", speaker];
    
    return welcome;
}

- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *attendees = [NSMutableArray new];
    
    for (NSUInteger i = 0; i < speakers.count; i++) {
        NSString *badge = [self makeBadgeForSpeaker:speakers[i]];
        [attendees addObject:badge];
    }
    return attendees;
}

- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers {
    NSMutableArray *rooms = [NSMutableArray new];
    
    for (NSUInteger i =0; i < speakers.count; i++) {
        NSNumber *index = @(i+1);
        
        
        NSString *greet = [[NSString alloc] initWithFormat:@"Welcome, %@! You'll be in dressing room %@.", speakers[i], index];
                   
        [rooms addObject:greet];
    }
    return rooms;
}
/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
