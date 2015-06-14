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
    return [NSString stringWithFormat:@"Hello, my name is %@.", attendee];
}

-(NSArray *)batchBadgeCreator:(NSArray *)attendees {
    NSMutableArray* out = [NSMutableArray new];
    for (NSString* attendee in attendees) {
        [out addObject:[self badgeMaker:attendee]];
    }
    return out;
}

-(NSArray *)assignRooms:(NSArray *)attendees {
    NSMutableArray *out = [NSMutableArray new];
    NSInteger i=0;
    for (id attendee in attendees) {
        i++;
        [out addObject:[NSString stringWithFormat:@"Hello, %@! You'll be assigned to room %ld!", attendee, i]];
    }
    return out;
    
}


@end
