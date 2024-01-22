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


@end
