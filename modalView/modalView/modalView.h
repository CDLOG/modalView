//
//  modalView.h
//  弹出
//
//  Created by 陈乐杰 on 2018/5/21.
//  Copyright © 2018年 CHEN. All rights reserved.
/*
默认蒙版覆盖整个屏幕，baseView为弹出 view 的底部控件，可以将需要添加的控件直接往 baseview 中添加
作为 baseview的子控件，也会带有弹出效果。


*/
//

#import <UIKit/UIKit.h>

@interface modalView : UIView
@property (strong,nonatomic) UIView * baseView;
@property (assign,nonatomic) float  baseHeight;
-(void)hideAnimation;
-(void)showAnimation;
@end
