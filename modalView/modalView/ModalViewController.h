//
//  ModalViewController.h
//  弹出
//
//  Created by nst on 2018/7/25.
//  Copyright © 2018年 CHEN. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^modalBlock)(NSString *name);
typedef void(^textBlock)(NSString *text);
@interface ModalViewController : UIViewController
@property (strong,nonatomic) textBlock textB;
+(instancetype)initWithBlock:(modalBlock)block;
@end
