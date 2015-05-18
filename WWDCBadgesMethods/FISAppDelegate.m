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
    return YES;
}

//define methods here
-(NSString *)badgeMaker:(NSString *)attendee {
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", attendee];
    return badge;
}

-(NSArray *)batchBadgeCreator:(NSString *)attendees {
    NSMutableArray *arrayOfBadges = [NSMutableArray array];
    for (NSString* currentName in attendees) {
        NSString *newBadge = [NSString stringWithFormat:@"Hello, my name is %@.", currentName];
        [arrayOfBadges addObject:newBadge];
    }
    return arrayOfBadges;
}

-(NSArray *)assignRooms:(NSString *)attendees {
    NSMutableArray *arrayOfRoomAssignments = [NSMutableArray array];
    int counter = 1;
    for (NSString* currentName in attendees) {
        NSString *newAssignment = [NSString stringWithFormat:@"Hello, %@! You'll be assigned to room %i!", currentName, counter];
        counter++;
        [arrayOfRoomAssignments addObject:newAssignment];
    }
    return arrayOfRoomAssignments;
}


@end
