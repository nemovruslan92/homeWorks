//
//  ViewController.m
//  homeWork411
//
//  Created by Admin on 07.12.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "ViewController.h"
#import "DeviceDetailceController.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>
{
    NSDictionary *apple;
}
@property (retain, nonatomic) IBOutlet UITableView *deviceTable;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.deviceTable.dataSource=self;
    self.deviceTable.delegate=self;
    NSArray *iPhone=[[NSArray alloc]initWithObjects:@"iPone", @"iPhone3GS", @"iPhone4", @"iPhone5", @"iPhone6", nil];
    NSArray *iPad=[[NSArray alloc]initWithObjects:@"ipad2", @"ipad3", @"ipad4", @"ipadair",nil];
    //NSDictionary *apple=[[NSDictionary alloc]initWithObjects: iPhone iPad: forKeys:@"keyiPhone" @"keyiPad"];
    apple=[[NSDictionary alloc]initWithObjectsAndKeys: iPhone,@"keyiPhone",iPad,@"keyiPad", nil];
    
}
-(NSArray *) sections{
    return [apple allKeys];
}
-(NSString *) keyForSection:(int)section{
    return [[self sections] objectAtIndex: section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *key= [self keyForSection:section];
    NSArray *arrayForSections=[apple objectForKey:key];
    return [arrayForSections count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *stroka = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    NSString *key= [self keyForSection:(int)indexPath.section];
    NSArray *arrayForSections=[apple objectForKey:key];
    stroka.textLabel.text=[arrayForSections objectAtIndex:indexPath.row];
    
    return stroka;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [[self sections]count];
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [self keyForSection:section];
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *key= [self keyForSection:(int)indexPath.section];
    NSArray *arrayForSections=[apple objectForKey:key];
    NSString *device=[arrayForSections objectAtIndex:indexPath.row];
    
    
    UIStoryboard *s=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    DeviceDetailceController *deviceController=[s instantiateViewControllerWithIdentifier:@"details"];
    //deviceDetailceController *deviceController=[[DeviceDetailceController alloc]initWithNibName:nil bundle:nil];
    //[deviceController view];
    //deviceController.label.text= device;
    [deviceController setDeviceName:device];
    [self presentViewController:deviceController animated:YES completion:nil];
}
@end
