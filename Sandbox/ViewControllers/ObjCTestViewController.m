//
//  ObjCTestViewController.m
//  Sandbox
//
//  Created by Kenta Hara on 2021/11/22.
//

#import "ObjCTestViewController.h"
@import Util;

@interface ObjCTestViewController ()

@end

@implementation ObjCTestViewController

+ (ObjCTestViewController*) create {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
            instantiateViewControllerWithIdentifier:@"ObjCTestViewController"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Greeter *greeter = [Greeter new];
    [greeter greeting];
    [greeter getRandomGreetingTextObjCWithSuccess:^(NSString * _Nonnull text) {
        NSLog(@"Sucess! %@", text);
    } error:^(RandomError * _Nonnull error) {
        NSLog(@"Got Error... %@", error);
    }];
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
