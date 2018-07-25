//
//  modalView.m
//  弹出
//
//  Created by 陈乐杰 on 2018/5/21.
//  Copyright © 2018年 CHEN. All rights reserved.
//

#import "modalView.h"

@implementation modalView

-(instancetype)initWithFrame:(CGRect)frame
{
    self =  [super initWithFrame:frame];
    
    self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
    [self addSubview:self.baseView];
    return self;
}
-(float)baseHeight{
    if (_baseHeight==0) {
        return 200;
    }
    return _baseHeight;
}
-(UIView *)baseView
{
    if(_baseView)
        return _baseView;
    _baseView = [[UIView alloc] initWithFrame:CGRectMake(0, self.frame.size.height, self.frame.size.width, self.baseHeight)];
    _baseView.backgroundColor = [UIColor redColor];
    
    return _baseView;
}


-(void)showAnimation
{
    [[[[UIApplication sharedApplication]delegate]window] addSubview:self];
    self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);

    [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0.6 options:UIViewAnimationOptionCurveEaseOut animations:^{
//        self.backgroundColor = [UIColor greenColor];
        self.backgroundColor = [UIColor colorWithWhite:0.6 alpha:0.4];
        self.baseView.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - self.baseHeight, [UIScreen mainScreen].bounds.size.width , self.baseHeight);
        
    } completion:^(BOOL finished) {
        
    }];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self hideAnimation];
}
-(void)hideAnimation{
    [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0.6 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
//        self.backgroundColor = [UIColor clearColor];
        self.baseView.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, self.baseHeight);
        
    } completion:^(BOOL finished) {
                [self removeFromSuperview];
    }];
}

@end
