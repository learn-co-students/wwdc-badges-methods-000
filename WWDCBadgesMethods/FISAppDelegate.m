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

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

-(NSString *)badgeMaker:(NSString *)attendee{
    NSString *outputString = [NSString stringWithFormat:@"Hello, my name is %@.", attendee];
    return outputString;
};

-(NSArray *)batchBadgeCreator:(NSArray *)attendees{
    
    NSMutableArray *badgesArray =  [NSMutableArray array];
    
    for(id object in attendees){
        NSString *badgeObject = [NSString stringWithFormat:@"Hello, my name is %@.", object];
        [badgesArray addObject:badgeObject];
    };
    
    return badgesArray;
    
};

-(NSArray *)assignRooms:(NSArray *)attendees{
    
    NSMutableArray *badgesArray =  [NSMutableArray array];
    
    for(id object in attendees){
        NSInteger objectIndex = [attendees indexOfObject:object] + 1;
        NSString *badgeObject = [NSString stringWithFormat:@"Hello, %@! You'll be assigned to room %li!", object, objectIndex];
        [badgesArray addObject:badgeObject];
    };
    
    return badgesArray;
    
};

@end
