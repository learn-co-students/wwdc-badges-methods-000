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

- (NSString *)badgeMaker:(NSString *)attendee{
    NSString *badgeGreeting = [NSString stringWithFormat:@"Hello, my name is %@.", attendee];

    return badgeGreeting;
}

- (NSArray *)batchBadgeCreator:(NSArray *)attendees{
    NSMutableArray *speakerBadges = [NSMutableArray new];

    for (NSString *attendee in attendees) {
        [speakerBadges addObject:[self badgeMaker:attendee]];
    }

    return speakerBadges;
}

- (NSArray *)assignRooms:(NSArray *)attendees{
    NSInteger roomNumber = 1;
    NSMutableArray *roomAssignments = [NSMutableArray new];

    for (NSString *attendee in attendees) {
        NSString *roomAssignment = [NSString stringWithFormat:@"Hello, %@! You'll be assigned to room %ld!", attendee, roomNumber];
        [roomAssignments addObject:roomAssignment];
        roomNumber++;
    }

    return roomAssignments;
}

@end
