//
//  JMViewController.m
//  A View Into The World
//
//  Created by JONATHAN MARIANO on 6/25/14.
//
//

#import "JMViewController.h"

@interface JMViewController ()

@property (strong, nonatomic) UILabel *myLabel;
@property (strong, nonatomic) UITextField *myTextField;



@end

@implementation JMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSLog(@"button1 bounds size (%f, %f)", self.button1.bounds.size.height, self.button1.bounds.size.width);
//    NSLog(@"button1 frame size (%f, %f)", self.button1.frame.size.height, self.button1.frame.size.width);
//    NSLog(@"button1 bounds origin (%f, %f)", self.button1.bounds.origin.x, self.button1.bounds.origin.y);
//    NSLog(@"button1 frame origin (%f, %f)", self.button1.frame.origin.x, self.button1.frame.origin.y);
//    NSLog(@"button1 center (%f, %f)", self.button1.center.x , self.button1.center.y);


//    NSLog(@"view1 bounds size (%f, %f)", self.view.bounds.size.height, self.view1.bounds.size.width);
//    NSLog(@"view1 frame size (%f, %f)", self.view1.frame.size.height, self.view1.frame.size.width);
//    NSLog(@"view1 bounds origin (%f, %f)", self.view1.bounds.origin.x, self.view1.bounds.origin.y);
//    NSLog(@"view1 frame origin (%f, %f)", self.view1.frame.origin.x, self.view1.frame.origin.y);
//    NSLog(@"view1 center (%f, %f)", self.view1.center.x , self.view1.center.y);
//
//    NSLog(@"button2 bounds size (%f, %f)", self.button2.bounds.size.height, self.button2.bounds.size.width);
//    NSLog(@"button2 frame size (%f, %f)", self.button2.frame.size.height, self.button2.frame.size.width);
//    NSLog(@"button2 bounds origin (%f, %f)", self.button2.bounds.origin.x, self.button2.bounds.origin.y);
//    NSLog(@"button2 frame origin (%f, %f)", self.button2.frame.origin.x, self.button2.frame.origin.y);
//    NSLog(@"button2 center (%f, %f)", self.button2.center.x , self.button2.center.y);
    
    //CREATE A VIEW IN CODE
//    CGRect myViewsFrame = CGRectMake(20, 250, 200, 60);//CGRect not an OBJ
//    UIView *myView = [[UIView alloc] initWithFrame:myViewsFrame];
//    myView.backgroundColor = [UIColor redColor];
//    myView.alpha = 0.5;
//    [self.view addSubview:myView];
//    
//    
//    UIButton *anotherButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    anotherButton.frame = CGRectMake(40, 40, 200, 100);
//    anotherButton.backgroundColor = [UIColor greenColor];
//    [anotherButton setTitle:@"press me please" forState:UIControlStateNormal];
//    [self.view addSubview:anotherButton];
//    
//    [myView removeFromSuperview];//remove red subview
//    
//    [anotherButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    //CHALLENGE 13 Section 64 Lecture 214
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.myLabel = [[UILabel alloc] init];
    self.myLabel.frame = CGRectMake(20, 60, 280, 22);
    [self.view addSubview:self.myLabel];
    self.myLabel.textColor = [UIColor blueColor];
    self.myLabel.text = @"PlaceHolder";
    
    self.myTextField = [[UITextField alloc] init];
    self.myTextField.frame = CGRectMake(20, 110, 280, 30);
    self.myTextField.placeholder = @"TextField placeholder";
    self.myTextField.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.myTextField];
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(20, 160, 280, 30);
    [myButton setTitle:@"Press Me" forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(myButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];

    
}


-(void)myButtonPressed:(UIButton *)sender{
    
    self.myLabel.text = self.myTextField.text;
    [self.myTextField resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
