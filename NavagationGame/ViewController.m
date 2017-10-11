//
//  ViewController.m
//  NavagationGame
//
//  Created by Nicholas Fung on 2017-10-10.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIBarButtonItem *homeButton = [[UIBarButtonItem alloc] initWithTitle:@"Home"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(goToHome:)];
    self.navigationItem.rightBarButtonItem = homeButton;
}

- (IBAction)goToHome:(id)sender {
    NSArray *navStack = [self.navigationController viewControllers];
    NSLog(@"There are %lu views in the stack", (unsigned long)[navStack count]);
    [self.navigationController popToViewController:[navStack firstObject] animated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
