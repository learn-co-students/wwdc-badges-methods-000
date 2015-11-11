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
    
    /*
    NSString *speakera = @"Inigo Montoya";
    NSString *speakerMessage = [self badgeForSpeaker:speakera];
    NSLog(@"%@",speakerMessage);
    */
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- (NSString*) badgeForSpeaker:(NSString *)speaker {
    return [NSString stringWithFormat:@"Hello, my name is %@.",speaker];
}

- (NSArray*) badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *speakerBadges = [[NSMutableArray alloc]init];
    for (NSString *speaker in speakers) {
        NSString *badge = [self badgeForSpeaker:speaker];
        [speakerBadges addObject:badge];
    }
    return speakerBadges;
}

- (NSArray*) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *welcomeMessages = [[NSMutableArray alloc]init];
    for (int count=0; count < [speakers count]; count++) {
        [welcomeMessages addObject:[NSString stringWithFormat:@"Hello, %@! You'll be assigned to room %i!", speakers[count],count+1]];
    }
    return welcomeMessages;
}


@end
