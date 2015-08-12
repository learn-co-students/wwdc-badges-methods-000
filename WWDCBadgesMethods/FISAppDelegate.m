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

    - (NSString *)makeBadgeForSpeaker:(NSString *)speakers; {
        
        NSMutableString *greetings = [@"Hello, my name is" mutableCopy];
        [greetings appendFormat:@" %@.", speakers];
        return greetings;
}

/*    - (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers; {
        
        NSMutableArray *allBadges = [NSMutableArray new];
        
        for (NSUInteger i = 0; i < 8; i++)
        {
        
            NSString *name = speakers[i];
            NSMutableString *greetings = [@"Hello, my name is" mutableCopy];
            [greetings appendFormat:@" %@.", name];
            [allBadges addObject:greetings];
        
        }
        
       return allBadges;
  
}*/


   - (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers; {
    
    FISAppDelegate *greeting = [[FISAppDelegate alloc] init];
    NSMutableArray *allBadges = [NSMutableArray new];
    
    for (NSUInteger i = 0; i < 8; i++)
    {
        
        NSString *name = speakers[i];
        NSString *fullGreetings = [greeting makeBadgeForSpeaker: name];
        [allBadges addObject:fullGreetings];

    }
    
    return allBadges;
    
}



    - (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers; {
      
        NSMutableArray *allSpeakersAndRoom = [NSMutableArray new];
        
        for (NSInteger i = 0; i < 8; i++)
        {
            
            NSString *name = speakers[i];
            NSInteger roomNumber = i+1;
            NSMutableString *greetings = [[NSMutableString alloc] init];
            [greetings appendFormat:@"Welcome, %@! You'll be in dressing room %lu.", name, roomNumber];
            [allSpeakersAndRoom addObject:greetings];
            
        }
        
        return allSpeakersAndRoom;
}

@end
