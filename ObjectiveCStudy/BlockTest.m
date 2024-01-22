//
//  BlockTest.m
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/21/24.
//

#import <Foundation/Foundation.h>
#import "BlockTest.h"

@implementation BlockTest

- (instancetype)init
{
    self = [super init];
    if (self) {
        simpleBlock = ^{
            NSLog(@"%s, line: %d, %@",__func__,__LINE__,@"simpleBlock 호출");
        };
        blockWithParam = ^(NSString * name){
            NSLog(@"%s, line: %d, name: %@",__func__,__LINE__,name);
        };
        blockWithMultiParam = ^(NSString * name, int age){
            NSLog(@"%s, line: %d, name: %@, age: %d",__func__,__LINE__,name,age);
        };
    }
    
    return self;
}

- (void)someFunction {
    NSLog(@"%s, line: %d, %@",__func__,__LINE__,@"");
    simpleBlock();
}

- (void)someFunctionWithParam:(NSString *)name {
    NSLog(@"%s, line: %d, %@",__func__,__LINE__,@"");
    blockWithParam(name);
}

- (void)someFunctionWithMultiParam:(NSString *)name withAge:(int)age {
    NSLog(@"%s, line: %d, %@",__func__,__LINE__,@"");
    blockWithMultiParam(name, age);
}

- (void)someFunctionWithBlockParam:(void(^)(NSString *))done
{
    NSLog(@"%s, line: %d, %@",__func__,__LINE__,@"");
    done(@"완료");
}

- (void)someFunctionWithTypedefBlockParam:(DoneBlock)done
{
    NSLog(@"%s, line: %d, %@",__func__,__LINE__,@"");
    done(@"완료");
}

- (void)someFunctionWithOptionalBlockParam:(void (^__nullable)(NSString *))done
{
    NSLog(@"%s, line: %d, %@",__func__,__LINE__,@"");
    if (done != nil) {
        done(@"완료 DoneBlock");
    }
}

@end
