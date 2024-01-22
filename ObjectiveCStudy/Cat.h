//
//  Cat.h
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/22/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Cat : NSObject
{
    NSString *name;
    int age;
}

-(id)initWithName:(NSString *) nameValue;
-(id)initWithAge:(int) ageValue;
-(id)initWithNameAndAge:(NSString *) nameValue :(int) ageValue;

@end

NS_ASSUME_NONNULL_END
