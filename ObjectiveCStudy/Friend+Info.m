//
//  Friend+Info.m
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/22/24.
//

#import "Friend+Info.h"

@implementation Friend (Info)

- (nonnull NSString *)getInfo {
    
    
    return [NSString stringWithFormat:@"친구이름: %@", self.nickname];
}

@end
