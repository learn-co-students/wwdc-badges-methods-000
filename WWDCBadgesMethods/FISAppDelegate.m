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


- (NSString*)makeBadgeForSpeaker:(NSString *)speaker {
    
    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}

- (NSMutableArray*)makeAllBadgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges = [[NSMutableArray alloc]initWithCapacity:10];
    for (NSString* speaker in speakers){
        [badges addObject:[self makeBadgeForSpeaker:speaker]];
    }
    return badges;
}

- (NSMutableArray*)greetAndAssignRoomsToSpeakers:(NSArray *)speakers{
    NSMutableArray *rooms = [[NSMutableArray alloc]initWithCapacity:10];
    NSInteger index = 1;
    for (NSString* speaker in speakers){
        NSString *greeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speaker, index];
        [rooms addObject:greeting];
        index++;
    }
    return rooms;
}

@end
