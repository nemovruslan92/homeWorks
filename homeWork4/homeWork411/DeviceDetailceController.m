//
//  DeviceDetailceController.m
//  homeWork411
//
//  Created by Admin on 08.12.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "DeviceDetailceController.h"
@interface DeviceDetailceController ()
{
    NSString *name;
}
@property (retain, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation DeviceDetailceController
-(void) setDeviceName:(NSString *)string{
    name=string;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //NSURLRequest *request=[[NSURLRequest alloc] initWithURL:];
    self.label.text=name;
    NSString *urlString=[@"http://en.wikipedia.org/wiki" stringByAppendingPathComponent:name];
    NSURL *url=[NSURL URLWithString:urlString];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
}

- (void)dealloc {
    [_label release];
    [_webView release];
    [super dealloc];
}
@end
