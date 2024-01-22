//
//  BlockTest.h
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/21/24.
//

#ifndef BlockTest_h
#define BlockTest_h

typedef NSString * MyString;

typedef void(^DoneBlock)(NSString *);

@interface BlockTest : NSObject
{
    NSString * name;
    MyString myName;
    
    //매개변수 X, 반환 X 인 블럭함수 - 자료형
    //반환 (^블럭이름)(매개변수);
    void (^simpleBlock)(void);
    
    //반환 (^블럭이름)(매개변수);
    void (^blockWithParam)(NSString *);
    
    //반환 (^블럭이름)(매개변수, 매개변수);
    void (^blockWithMultiParam)(NSString *, int);
}

- (void)someFunction;
- (void)someFunctionWithParam:(NSString *)name;
- (void)someFunctionWithMultiParam:(NSString *)name withAge:(int)age;

- (void)someFunctionWithBlockParam:(void(^)(NSString *))done;
- (void)someFunctionWithTypedefBlockParam:(DoneBlock)done;

@end

#endif /* BlockTest_h */
