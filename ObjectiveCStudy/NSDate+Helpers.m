//
//  NSDate+Helpers.m
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/22/24.
//

#import "NSDate+Helpers.h"

@implementation NSDate (Helpers)

- (BOOL)isToday {
    return [[NSCalendar currentCalendar] isDateInToday:self];
}

@end
