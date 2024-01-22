//
//  Pet.h
//  ObjectiveCStudy
//
//  Created by 안정은 on 1/22/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pet : NSObject

@property (readonly, copy) NSString *name;

/// 운다
/// - Parameter name: 이름
- (void)doCry:(NSString *) name;

@end

NS_ASSUME_NONNULL_END
