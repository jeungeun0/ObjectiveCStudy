//
//  Cat.m
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/22/24.
//

#import "Cat.h"

@implementation Cat

- (id)init {
    self = [super init];
    
    if (self) {
        age = 0;
        name = @"이름없음";
    }
    
    return self;
}

- (id)initWithName:(nonnull NSString *)nameValue {
    self = [super init];
    
    if (self) {
        age = 0;
        name = nameValue;
    }
    
    return self;
}

- (id)initWithAge:(int)ageValue {
    self = [super init];
    
    if (self) {
        age = ageValue;
        name = @"이름없음";
    }
    
    return self;
}

- (id)initWithNameAndAge:(nonnull NSString *)nameValue :(int)ageValue {
    self = [super init];
    
    if (self) {
        age = ageValue;
        name = nameValue;
    }
    
    return self;
}

@end
