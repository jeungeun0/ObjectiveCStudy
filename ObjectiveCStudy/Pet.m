//
//  Pet.m
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/22/24.
//

#import "Pet.h"

//클래스 익스텐션을 통해
//내부적으로 프로퍼티를 재선언해서 변경이 가능합니다.
//추가로 사용할 함수나 변수를 선언할 수 있습니다.
//내부에서만 사용할 인스턴스 변수로 사용가능합니다.
@interface Pet ()
{
    NSNumber *age;
}

//재선언
@property (readwrite, copy) NSString *name;

@end

@implementation Pet

- (id)init
{
    self = [super init];
    if (self) {
        age = [NSNumber numberWithInt:3];
    }
    return self;
}

- (void)doCry:(NSString *) name {
    
    //프로퍼티 자체가 readonly 라서 setter가 없는 상황이지만
    //클래스 익스텐션으로 내부적으로 프로퍼티를 재선언하고 readwrite로
    //설정했기 때문에 사용 가능합니다.
    [self setName:name];
    
    NSLog(@"doCry - name: %@, age: %@", _name, age);
}


@end
