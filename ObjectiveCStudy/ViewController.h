//
//  ViewController.h
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/18/24.
//

#import <UIKit/UIKit.h>

//외부에서 접근하기 위한 부분
@interface ViewController : UIViewController

//외부에서 접근 가능한
//함수, 프로퍼티, 멤버변수, 클래스 메소드
@property (weak, nonatomic) IBOutlet UIButton *selectorTestButton;

@end

