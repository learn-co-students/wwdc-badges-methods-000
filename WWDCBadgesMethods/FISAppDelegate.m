//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
// @"Welcome, Edsger Dijkstra! You'll be in dressing room 2."

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    NSMutableString *greet = [@"Hello, my name is " mutableCopy];
    [greet appendString: speaker];
    [greet appendString: @"."];
    return greet;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges =[[NSMutableArray alloc]init];
    for (NSInteger i = 0; i < [speakers count]; i++) {
        [badges addObject:[self badgeForSpeaker:speakers[i]]];
    }
    return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *rooms =[[NSMutableArray alloc]init];
    for (NSInteger i = 0; i < [speakers count]; i++) {
        NSString *assignment = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %ld.", speakers[i], i+1];
        [rooms addObject:assignment];
        }
    return rooms;
}

@end
