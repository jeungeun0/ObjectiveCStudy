//
//  Friend.m
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/18/24.
//

#import <Foundation/Foundation.h>
#import "Friend.h"
//헤더파일을 임포트 하고 있어야 함. 헤더파일에 있는 것을 가져온다.

//class extension
//내가 안에서 사용할 것. 구현부에서 사용할 것을 넣는다.
//클래스 확장 - 클래스 안에서 사용
@interface Friend ()
{
    NSString *_name;
}
@end

//구현부
//실제로 구현하는 부분
@implementation Friend

- (void)sayHello {
    self->_name = @"호롤롤로";
    self->_nickname = @"쩡대리";
    NSLog(@"안녕하세요?!?! %@", self->_name);
}

+ (void)sayGoodbye {
    NSLog(@"잘가요!!");
}

@end
