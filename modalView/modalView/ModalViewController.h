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
//用来调用的block，并且可以被外部传值
@property (strong,nonatomic) textBlock textB;
-(void)doBlock;
//需要初始化的额外内容，可以用来传递通用的block，一般传nil,如过是继承此类会出问题，会加载到父类，还需要解决,目前直接alloc，init
//但是要设置VC.modalPresentationStyle = UIModalPresentationOverFullScreen;
+(instancetype)initWithBlock:(modalBlock)block;
@end
