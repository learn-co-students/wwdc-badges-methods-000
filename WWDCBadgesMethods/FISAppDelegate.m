//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [self assignRooms:@[@"Danny", @"Raf", @"Fernando"]];
    
    return YES;
}

//define methods here

-(NSString *)badgeMaker:(NSString *)attendee{
    NSString *finalString = [NSString stringWithFormat:@"Hello, my name is %@.", attendee];
    
    return finalString;
}

-(NSArray *)batchBadgeCreator:(NSArray *)attendees{
    NSMutableArray *speaakerBadgesArray = [NSMutableArray new];
    
    for (NSString *name in attendees) {
        [speaakerBadgesArray addObject:[NSString stringWithFormat:@"Hello, my name is %@.", name]];
    }
    
    return speaakerBadgesArray;
}

-(NSArray *)assignRooms:(NSArray *)attendees{
    NSMutableArray *roomAssignmentsArray = [NSMutableArray new];
    
    for (NSInteger i = 0; i < [attendees count]; i++) {
        [roomAssignmentsArray addObject:[NSString stringWithFormat:@"Hello, %@! You'll be assigned to room %ld!",attendees[i], (long)i + 1]];
    }
    
    NSLog(@"%@", roomAssignmentsArray);
    return roomAssignmentsArray;
}


@end
