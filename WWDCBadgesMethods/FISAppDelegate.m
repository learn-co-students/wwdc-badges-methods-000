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
    
    NSString *badgeForSpeaker = [NSString stringWithFormat:@"Hello, my name is %@.",speaker];
    return badgeForSpeaker;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *badgesForSpeakers = [[NSMutableArray alloc]initWithObjects:@"Hello, my name is Adele Goldberg.", @"Hello, my name is Edsger Dijkstra.", @"Hello, my name is Joan Clarke.", @"Hello, my name is Clarence Ellis.", @"Hello, my name is Margaret Hamilton.", @"Hello, my name is George Boole.", @"Hello, my name is Tim Berners-Lee.", @"Hello, my name is Jean Bartik.", nil];
    return badgesForSpeakers;
}

- (NSMutableArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *rooms = [NSMutableArray new];
    
    for (NSUInteger i = 0; i < speakers.count; i++) {
        NSNumber *roomNumber = @(i+1);
        
        
        NSString *greet = [[NSString alloc] initWithFormat:@"Welcome, %@! You'll be in dressing room %@.", speakers[i], roomNumber];
        
        [rooms addObject:greet];
    }
    return rooms;
}


@end
