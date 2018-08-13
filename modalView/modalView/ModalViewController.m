//
//  ModalViewController.m
//  弹出
//
//  Created by nst on 2018/7/25.
//  Copyright © 2018年 CHEN. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()
@property (copy,nonatomic) modalBlock modalB;
@property (strong,nonatomic) ModalViewController *modalVC;
@end

@implementation ModalViewController

+(instancetype)initWithBlock:(modalBlock)block{
      ModalViewController *modalVC= [[ModalViewController alloc]init];
     modalVC.modalPresentationStyle = UIModalPresentationOverFullScreen;
    if (modalVC) {
        modalVC.modalB = block;
    }
    return modalVC;
}

-(void)doBlock{
    if (self.modalB) {
        self.modalB(@"通用执行的代码");
    }
    if (self.textB) {
        self.textB(@"调用了block");
    }
}
//执行回调并推出
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"333");
    [self doBlock];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    //    [self.view setAlpha:0.8];
    [self.view setBackgroundColor:[UIColor colorWithWhite:0.5 alpha:0.5]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
