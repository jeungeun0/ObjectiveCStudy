//
//  Friend.h
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/18/24.
//

#ifndef Friend_h
#define Friend_h
#import <UIKit/UIKit.h>

//클래스 선언 @Interface
@interface Friend : NSObject
//외부에서 접근 가능한 녀석들 - 멤버 변수
@property NSString *nickname;

//인스턴스 메소드 - 객체 생성 후 그녀석이 가지고 있는 메소드
- (void)sayHello;

//클래스 메소드 - 스테틱 메소드 - 객체 생성하지 않아도 호출할 수 있음
+ (void)sayGoodbye;

+ (id)getAFriend;

+ (Friend *)getAMyFriend;

@end

#endif /* Friend_h */

