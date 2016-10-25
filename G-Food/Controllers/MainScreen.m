//
//  ViewController.m
//  G-Food
//
//  Created by Ngo Sy Truong on 10/25/16.
//  Copyright © 2016 Ngo Sy Truong. All rights reserved.
//

#import "MainScreen.h"
#import "ListProduct.h"

@interface MainScreen ()

@property (nonatomic, strong) ListProduct *category;

@end

@implementation MainScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:nil
                                                                            action:nil];
    [self createImage];
}

- (void)createImage {
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    imageView.image = [UIImage imageNamed:@"background.jpg"];
    [self.view addSubview:imageView];
    
    UIButton *btnDrink = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, 100, 100)];
    [btnDrink setImage:[UIImage imageNamed:@"drink.png"] forState:UIControlStateNormal];
    [btnDrink addTarget:self
                 action:@selector(drink)
       forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnDrink];
    
    UIButton *btnCookie = [[UIButton alloc] initWithFrame:CGRectMake(200, 150, 100,100)];
    [btnCookie setImage:[UIImage imageNamed:@"cookies.png"] forState:UIControlStateNormal];
    [btnCookie addTarget:self
                  action:@selector(cookies)
        forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCookie];
    
    UIButton *btnIceCream = [[UIButton alloc] initWithFrame:CGRectMake(50, 300, 100,100)];
    [btnIceCream setImage:[UIImage imageNamed:@"iceCream.png"] forState:UIControlStateNormal];
    [btnIceCream addTarget:self
                    action:@selector(iceCream)
          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnIceCream];
    
    UIButton *btnBirthday = [[UIButton alloc] initWithFrame:CGRectMake(200, 300, 100,100)];
    [btnBirthday setImage:[UIImage imageNamed:@"birthday.png"] forState:UIControlStateNormal];
    [btnBirthday addTarget:self
                    action:@selector(birthday)
          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnBirthday];
    
}


- (void)drink {
    if (!self.category) {
        self.category = [[ListProduct alloc] init];
    }
    self.category.stringTitleCategory = @"Drink";
    [self.navigationController pushViewController:self.category animated:YES];
}

- (void)cookies {
    if (!self.category) {
        self.category = [[ListProduct alloc] init];
    }
    self.category.stringTitleCategory = @"Cookies";
    [self.navigationController pushViewController:self.category animated:YES];
}

- (void)iceCream {
    if (!self.category) {
        self.category = [[ListProduct alloc] init];
    }
    self.category.stringTitleCategory = @"Ice Cream";
    [self.navigationController pushViewController:self.category animated:YES];
}

- (void)birthday {
    if (!self.category) {
        self.category = [[ListProduct alloc] init];
    }
    self.category.stringTitleCategory = @"Birthday";
    [self.navigationController pushViewController:self.category animated:YES];
}

@end
