//
//  ViewController.m
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/18/24.
//

#import "ViewController.h"
#import "Friend.h"
#import "BlockTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    SEL btnSelector = @selector(onTestBtnClicked:);
    
    [_selectorTestButton addTarget:self action:btnSelector forControlEvents:UIControlEventTouchUpInside];
    
    Friend *createFriend = [Friend getAFriend];
    
    NSLog(@"createFriend: %@", [createFriend nickname]);
    
    Friend *createMyFriend = [Friend getAMyFriend];
    
    NSLog(@"createMyFriend: %@", [createMyFriend nickname]);
    
    //----------------------------------------------------
    [self sayHello];
    int randomNumber = [self getRandomNumber];
    [self saySomethingWithParam:100];
    [self saySomethingWithMultiParam:30 :@"쩡은"];
    //----------------------------------------------------
    Friend *aFriend = [[Friend alloc]init];
    [aFriend setNickname:@"으정이"];
    NSLog(@"nickName: %@", [aFriend nickname]);
    [aFriend setNickname:@"JD"];
    NSLog(@"nickName: %@", [aFriend nickname]);
    //----------------------------------------------------
    
    BlockTest *blockTest = [[BlockTest alloc] init];
    [blockTest someFunction];
    [blockTest someFunctionWithParam:@"애옹이"];
    [blockTest someFunctionWithMultiParam:@"원두" withAge:7];
    [blockTest someFunctionWithBlockParam:^(NSString * name) {
        NSLog(@"%s, line: %d, name: %@",__func__,__LINE__, name);
    }];
    [blockTest someFunctionWithTypedefBlockParam:^(NSString * name) {
        NSLog(@"%s, line: %d, name: %@",__func__,__LINE__, name);
    }];
    [blockTest someFunctionWithOptionalBlockParam:nil];
    [blockTest someFunctionWithOptionalBlockParam:^(NSString * value) {
        NSLog(@"%s, line: %d, name: %@",__func__,__LINE__, value);
    }];
    
}

- (void)onTestBtnClicked:(UIButton *) sender {
    NSLog(@"name: %@, btnTitle: %@", NSStringFromSelector(_cmd), sender.titleLabel.text);
}


/// 매개변수 X, 반환 X
/// [self sayHello];
- (void)sayHello {
    NSLog(@"안녕하세요");
}


/// 반환이 있는 형태
/// @Return 랜덤숫자
- (int)getRandomNumber {
    NSLog(@"name: %@", NSStringFromSelector(_cmd));
    //0~99 무작위수
    return arc4random_uniform(100);
}

/// 매개변수를 가지는 함수
/// - Parameter number: 숫자
- (void)saySomethingWithParam:(NSInteger) number {
    NSLog(@"name: %@", NSStringFromSelector(_cmd));
    NSLog(@"number: %d", number);
}

/// 매개변수를 가지는 함수
/// - Parameters:
///   - number: 숫자
///   - saying: 글자
- (void)saySomethingWithMultiParam:(NSInteger) number :(NSString *) saying {
    NSLog(@"name: %@", NSStringFromSelector(_cmd));
    NSLog(@"number: %d, saying: %@", number, saying);
}
@end
