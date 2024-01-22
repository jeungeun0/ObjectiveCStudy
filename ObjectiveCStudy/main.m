//
//  main.m
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/18/24.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Pet.h"
#import "Cat.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    
//    Pet *myCat = [[Pet alloc]init];
//    [myCat doCry:@"개냥이"];
    
    Cat *myCat1 = [[Cat alloc] init];
    Cat *myCat2 = [[Cat alloc] initWithName:@"개냥이"];
    Cat *myCat3 = [[Cat alloc] initWithAge:10];
    Cat *myCat4 = [[Cat alloc] initWithNameAndAge:@"야옹이" :3];
    
    
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
