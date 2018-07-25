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
@end

@implementation ModalViewController

+(instancetype)initWithBlock:(modalBlock)block{
    ModalViewController *modalVC = [[ModalViewController alloc]init];
     modalVC.modalPresentationStyle = UIModalPresentationOverFullScreen;
    if (modalVC) {
        modalVC.modalB = block;
    }
    return modalVC;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"333");
    if (self.modalB) {
        self.modalB(@"666");
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.view setBackgroundColor:[UIColor redColor]];
    // Do any additional setup after loading the view from its nib.
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
