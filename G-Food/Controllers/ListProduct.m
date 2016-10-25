//
//  ListProduct.m
//  G-Food
//
//  Created by Ngo Sy Truong on 10/25/16.
//  Copyright © 2016 Ngo Sy Truong. All rights reserved.
//

#import "ListProduct.h"
#import "DataItem.h"
#import "CustomCell.h"
#import "ShowDetailScreen.h"

@interface ListProduct ()

@property(strong, nonatomic) NSMutableArray *listFood;

@end

@implementation ListProduct

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *cart = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [cart setImage:[UIImage imageNamed:@"cart.png"] forState:UIControlStateNormal];
    [cart addTarget:self action:@selector(shoppingCart) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:cart];
    self.navigationItem.rightBarButtonItem = item;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self chooseDataItem];
    [self.tableView reloadData];
    self.title = self.stringTitleCategory;
}

- (void)shoppingCart {
    NSLog(@"ok");
}

- (void)chooseDataItem {
    if ([self.stringTitleCategory isEqualToString:@"Ice Cream"]) {
        [self createDataIceCream];
        
    } else if ([self.stringTitleCategory isEqualToString:@"Drink"]) {
        [self createDataDrink];
        
    } else if ([self.stringTitleCategory isEqualToString:@"Birthday"]) {
        [self createDataBirthday];
        
    } else if ([self.stringTitleCategory isEqualToString:@"Cookies"]) {
        [self createDataCookie];
    }
}

- (void)createDataIceCream {
    
    DataItem *iceCream1 = [[DataItem alloc] initWithName:@"Kem Vani" andPrice:@"$23" withImage:@"cream01.jpg" andSaleOffPrice:@""];
    DataItem *iceCream2 = [[DataItem alloc] initWithName:@"Kem sữa dừa" andPrice:@"$12" withImage:@"cream02.jpg" andSaleOffPrice:@"-30%"];
    DataItem *iceCream3 = [[DataItem alloc] initWithName:@"Kem Rum nho" andPrice:@"$14" withImage:@"cream03.jpg" andSaleOffPrice:@"-10%"];
    DataItem *iceCream4 = [[DataItem alloc] initWithName:@"Kem Caramel Hạnh nhân" andPrice:@"$15" withImage:@"cream04.jpg" andSaleOffPrice:@""];
    DataItem *iceCream5 = [[DataItem alloc] initWithName:@"Kem tuyết Cappuccino" andPrice:@"$13" withImage:@"cream05.jpg" andSaleOffPrice:@""];
    DataItem *iceCream6 = [[DataItem alloc] initWithName:@"Mocha Chocolate" andPrice:@"$24" withImage:@"cream06.jpg" andSaleOffPrice:@""];
    DataItem *iceCream7 = [[DataItem alloc] initWithName:@"Kem tuyết xoài" andPrice:@"$26" withImage:@"cream07.jpg" andSaleOffPrice:@""];
    DataItem *iceCream8 = [[DataItem alloc] initWithName:@"Kem tuyết dâu tây" andPrice:@"$9" withImage:@"cream08.jpg" andSaleOffPrice:@""];
    
    self.listFood = [[NSMutableArray alloc] initWithObjects:iceCream1, iceCream2, iceCream3, iceCream4, iceCream5, iceCream6, iceCream7, iceCream8, nil];
}

- (void)createDataDrink {
    DataItem *drink1 = [[DataItem alloc] initWithName:@"Cà phê American" andPrice:@"$23" withImage:@"drink01.jpg" andSaleOffPrice:@""];
    DataItem *drink2 = [[DataItem alloc] initWithName:@"Espresso" andPrice:@"$24" withImage:@"drink02.jpg" andSaleOffPrice:@""];
    DataItem *drink3 = [[DataItem alloc] initWithName:@"Cappuccino" andPrice:@"$28" withImage:@"drink03.jpg" andSaleOffPrice:@""];
    DataItem *drink4 = [[DataItem alloc] initWithName:@"Cafe chồn" andPrice:@"$27" withImage:@"drink04.jpg" andSaleOffPrice:@"free"];
    DataItem *drink5 = [[DataItem alloc] initWithName:@"Hồng trà Srilanca" andPrice:@"$17" withImage:@"drink05.jpg" andSaleOffPrice:@""];
    DataItem *drink6 = [[DataItem alloc] initWithName:@"Hồng trà Bá Tước" andPrice:@"$29" withImage:@"drink06.jpg" andSaleOffPrice:@""];
    DataItem *drink7 = [[DataItem alloc] initWithName:@"Hồng trà đào" andPrice:@"$33" withImage:@"drink07.jpg" andSaleOffPrice:@"free"];
    
    self.listFood  = [[NSMutableArray alloc] initWithObjects:drink1, drink2, drink3, drink4, drink5, drink6, drink7, nil];
}

- (void)createDataBirthday {
    DataItem *birthday1 = [[DataItem alloc] initWithName:@"Opera" andPrice:@"$12" withImage:@"birthday01.jpg" andSaleOffPrice:@""];
    DataItem *birthday2 = [[DataItem alloc] initWithName:@"Tiramisu" andPrice:@"$23" withImage:@"birthday02.jpg" andSaleOffPrice:@""];
    DataItem *birthday3 = [[DataItem alloc] initWithName:@"Đại ngàn" andPrice:@"$13" withImage:@"birthday03.jpg" andSaleOffPrice:@""];
    DataItem *birthday4 = [[DataItem alloc] initWithName:@"Caramel" andPrice:@"$25" withImage:@"birthday04.jpg" andSaleOffPrice:@"-20%"];
    DataItem *birthday5 = [[DataItem alloc] initWithName:@"Thời đại hoàng kim" andPrice:@"$8" withImage:@"birthday05.jpg" andSaleOffPrice:@""];
    DataItem *birthday6 = [[DataItem alloc] initWithName:@"Nho dâu tây xanh" andPrice:@"$15" withImage:@"birthday06.jpg" andSaleOffPrice:@""];
    DataItem *birthday7 = [[DataItem alloc] initWithName:@"Ngọn lửa tình yêu" andPrice:@"$18" withImage:@"birthday07.jpg" andSaleOffPrice:@"-10%"];
    DataItem *birthday8 = [[DataItem alloc] initWithName:@"Dâu tây pha lê" andPrice:@"$18" withImage:@"birthday08.jpg" andSaleOffPrice:@""];
    DataItem *birthday9 = [[DataItem alloc] initWithName:@"Cà phê Ai-len" andPrice:@"$32" withImage:@"birthday09.jpg" andSaleOffPrice:@""];
    DataItem *birthday10 = [[DataItem alloc] initWithName:@"Gấu Pooh" andPrice:@"$20" withImage:@"birthday10.jpg" andSaleOffPrice:@""];
    DataItem *birthday11 = [[DataItem alloc] initWithName:@"Nhím gai" andPrice:@"$11" withImage:@"birthday11.jpg" andSaleOffPrice:@""];
    
    self.listFood  = [[NSMutableArray alloc] initWithObjects:birthday1, birthday2, birthday3, birthday4, birthday5, birthday6, birthday7, birthday8, birthday9, birthday10, birthday11, nil];
}

- (void)createDataCookie {
    DataItem *cookie1 = [[DataItem alloc] initWithName:@"Hạt Điều Napoleon" andPrice:@"$11" withImage:@"cookies01.jpg" andSaleOffPrice:@""];
    DataItem *cookie2 = [[DataItem alloc] initWithName:@"Sôcôla Skate" andPrice:@"$5" withImage:@"cookies02.jpg" andSaleOffPrice:@""];
    DataItem *cookie3 = [[DataItem alloc] initWithName:@"Hạnh nhân mật ong" andPrice:@"$8" withImage:@"cookies03.jpg" andSaleOffPrice:@"-20%"];
    DataItem *cookie4 = [[DataItem alloc] initWithName:@"Sôcôla Chip" andPrice:@"$12" withImage:@"cookies04.jpg" andSaleOffPrice:@""];
    DataItem *cookie5 = [[DataItem alloc] initWithName:@"Cookie Cà phê" andPrice:@"$7" withImage:@"cookies05.jpg" andSaleOffPrice:@""];
    DataItem *cookie6 = [[DataItem alloc] initWithName:@"Cookie Ngũ cốc" andPrice:@"$9" withImage:@"cookies06.jpg" andSaleOffPrice:@""];
    DataItem *cookie7 = [[DataItem alloc] initWithName:@"Feng Li Nguyên vị" andPrice:@"$11" withImage:@"cookies07.jpg" andSaleOffPrice:@""];
    DataItem *cookie8 = [[DataItem alloc] initWithName:@"Feng Li Cà phê" andPrice:@"$10" withImage:@"cookies08.jpg" andSaleOffPrice:@""];
    
    self.listFood  = [[NSMutableArray alloc] initWithObjects:cookie1, cookie2, cookie3, cookie4, cookie5, cookie6, cookie7, cookie8, nil];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.listFood count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomCell *cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    UIButton *accessoryButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 45, 45)];
    UIImage *accImage = [UIImage imageNamed:@"order1.png"];
    [accessoryButton setImage:accImage forState: UIControlStateNormal];
    [accessoryButton addTarget:self action:@selector(order)
              forControlEvents:UIControlEventTouchUpInside];
    [cell setAccessoryView:accessoryButton];
    DataItem *dataItem = [[DataItem alloc] init];
    dataItem = self.listFood[indexPath.row];
    cell.labelName.text = dataItem.name;
    cell.labelPrice.text = dataItem.price;
    cell.imgViewThumbnail.image = dataItem.image;
    cell.labelSaleOff.text = dataItem.saleOff;
    
    return cell;
}

#pragma mark - Table view delegate


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DataItem *dataItem = [[DataItem alloc] init];
    dataItem = self.listFood[indexPath.row];
    
    ShowDetailScreen *showDetailScreen = [[ShowDetailScreen alloc] init];
    showDetailScreen.imgFood = dataItem.image;
    showDetailScreen.stringNameFood = dataItem.name;
    showDetailScreen.stringPrice = dataItem.price;
    showDetailScreen.stringSaleOff = dataItem.saleOff;
    
    [self.navigationController pushViewController:showDetailScreen animated:YES];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 80;
}

- (void)order {
/*    UIAlertController * alertController = [UIAlertController alertControllerWithTitle: @"Order"
                                                                              message: @"Input name,phone and address"
                                                                       preferredStyle:UIAlertControllerStyleAlert];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"name";
        textField.textColor = [UIColor blueColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        textField.borderStyle = UITextBorderStyleRoundedRect;
    }];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"phone";
        textField.textColor = [UIColor blueColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        textField.borderStyle = UITextBorderStyleRoundedRect;
    }];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"address";
        textField.textColor = [UIColor blueColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        textField.borderStyle = UITextBorderStyleRoundedRect;
    }];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Order" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSArray * textfields = alertController.textFields;
        UITextField * namefield = textfields[0];
        UITextField * phonefiled = textfields[1];
        UITextField * addressfiled = textfields[2];
        NSLog(@"%@:%@:%@",namefield.text,phonefiled.text,addressfiled.text);
        
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Cancle" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
        
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
 */
}

@end
