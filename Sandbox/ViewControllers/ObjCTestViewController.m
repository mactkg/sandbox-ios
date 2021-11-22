//
//  ObjCTestViewController.m
//  Sandbox
//
//  Created by Kenta Hara on 2021/11/22.
//

#import "ObjCTestViewController.h"

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
