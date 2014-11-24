//
//  ViewController.m
//  homeWork3
//
//  Created by Admin on 24.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//











#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>

@property (strong, nonatomic) UITableView *codeTable;
@property (weak, nonatomic) IBOutlet UITableView *interfaceTable;

@property (strong, nonatomic) NSArray *students;
@property (strong, nonatomic) NSArray *zachet;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _students=[[NSArray alloc]initWithObjects:@"Ruslan",@"Lexa",@"Pavel",@"Oleksandr", nil];
    _zachet=[[NSArray alloc]initWithObjects:@"Programing",@"Objective C",@"Model",@"Hystore", nil];
    [self addTableView];
}
- (void) addTableView {
    _codeTable=[[UITableView alloc]init];
    CGRect halfFrame = self.view.frame;
    halfFrame.size.width=halfFrame.size.width/2;
    halfFrame.origin.x=halfFrame.size.width;
    _codeTable.frame=halfFrame;
    _codeTable.dataSource=self;
    [self.view addSubview:_codeTable];
}

-(NSArray *) arrayForTableView:(UITableView *)table{
    if (table == _codeTable){
        return _students;
    }
    return _zachet;
}



-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *array = [self arrayForTableView:tableView];

    return [array count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier =@"Cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSArray *array = [self arrayForTableView:tableView];
    cell.textLabel.text = [array objectAtIndex:indexPath.row];
    
    return cell;
}


@end
