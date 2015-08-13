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

- (NSString *)makeBadgeForSpeaker:(NSString *)speaker
{
  return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}

- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers
{
  NSMutableArray *badges = [[NSMutableArray alloc] init];
  for (NSUInteger i = 0; i < 8; i++) {
    NSString *speaker = speakers[i];
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    [badges addObject:badge];
  }
  
  return badges;
}

- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers
{
  NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
  for (NSUInteger i =0; i<8; i++) {
    NSString *speaker = speakers[i];
    NSUInteger room = i+1;
    NSString *roomAssignment = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speaker, room];
    [roomAssignments addObject:roomAssignment];
  }
  return roomAssignments;
}

@end
