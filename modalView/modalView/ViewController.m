//
//  ViewController.m
//  弹出
//
//  Created by 陈乐杰 on 2018/5/21.
//  Copyright © 2018年 CHEN. All rights reserved.
//

#import "ViewController.h"
#import "modalView.h"
#import "ModalViewController.h"
@interface ViewController ()
@property (strong, nonatomic) modalView * modalV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0,0, 30, 30)];
    view.backgroundColor = [UIColor greenColor];
    
    [self.modalV.baseView addSubview:view];
    [self.view addSubview:self.modalV];
    // Do any additional setup after loading the view, typically from a nib.
}
-(modalView *)modalV
{
    if (_modalV) {
        return _modalV;
    }
    _modalV = [[modalView alloc]init];
    return _modalV;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)modalControl:(id)sender {
    ModalViewController *VC  = [ModalViewController initWithBlock:^(NSString *name) {
        NSLog(@"%@",name);
    }];
    
    [self presentViewController:VC animated:YES completion:nil];
    
    
}
- (IBAction)hide:(id)sender {
    [self.modalV hideAnimation];
}
- (IBAction)show:(id)sender {
    [self.modalV showAnimation];
}

@end
