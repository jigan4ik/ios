#import "DateMachine.h"

@interface DateMachine () <UITextFieldDelegate>

@end

@implementation DateMachine
- (void)viewDidLoad {
  [super viewDidLoad];
  // have fun
    
    //Добавляем textfield 1/
    UITextField *textField1 = [[UITextField alloc] initWithFrame:CGRectMake(80, 100, 250, 50)];
    textField1.placeholder = @"Start date";
    textField1.textAlignment = NSTextAlignmentCenter;
    textField1.layer.borderColor = [UIColor blackColor].CGColor;
    textField1.layer.borderWidth = 2.f;
    textField1.delegate = self;
    [self.view addSubview:textField1];
    [UITextField release];
    
    
    //Добавляем textfield 2/
    UITextField *textField2 = [[UITextField alloc] initWithFrame:CGRectMake(80, 200, 250, 50)];
    textField2.placeholder = @"Step";
    textField2.textAlignment = NSTextAlignmentCenter;
    textField2.layer.borderColor = [UIColor blackColor].CGColor;
    textField2.layer.borderWidth = 2.f;
    textField2.delegate = self;
    [self.view addSubview:textField2];
    [UITextField release];
    
    
    //Добавляем textfield 3/
    UITextField *textField3 = [[UITextField alloc] initWithFrame:CGRectMake(80, 300, 250, 50)];
    textField3.placeholder = @"Date unit";
    textField3.textAlignment = NSTextAlignmentCenter;
    textField3.layer.borderColor = [UIColor blackColor].CGColor;
    textField3.layer.borderWidth = 2.f;
    textField3.delegate = self;
    [self.view addSubview:textField3];
    [UITextField release];
    
    
    //Длбавляем дату/
    NSDate *today = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat: @"dd/MM/yyyy HH:mm"];
    
    
    //Добавляем Label/
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(80, 450, 250, 100)];
    label.tag = 111;
    label.textAlignment = NSTextAlignmentCenter;
    label.layer.borderColor = [UIColor purpleColor].CGColor;
    label.font = [UIFont fontWithName:@"Party LET" size:35];
    label.textColor = [UIColor magentaColor];
    label.text = [formatter stringFromDate:today];
    label.numberOfLines = 0;
    label.layer.borderWidth = 4.f;
    [self.view addSubview:label];
    [formatter release];
    [UILabel release];
    
    
    //Добавляем Button 1/
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(15, 700, 180, 90)];
    button1.layer.borderColor = [UIColor blackColor].CGColor;
    button1.layer.borderWidth = 2.f;
    button1.layer.cornerRadius = 40;
    [button1 setTitle:@"Add" forState: UIControlStateNormal];
    [button1 setTitle:@"Super :)" forState:UIControlStateHighlighted];
    [button1 setTitleColor: [UIColor redColor] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(buttonClickUp:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    [button1 release];
    
    
    //Добавляем Button 2/
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(215, 700, 180, 90)];
    button2.layer.borderColor = [UIColor blackColor].CGColor;
    button2.layer.borderWidth = 2.f;
    button2.layer.cornerRadius = 40;
    [button2 setTitle:@"Sub" forState: UIControlStateNormal];
    [button2 setTitle:@"Like :)" forState:UIControlStateHighlighted];
    [button2 setTitleColor: [UIColor redColor] forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(buttonClickUp:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    [button2 release];
    
    
    // Реализовываем дату на одни сутки вперед//
    NSDate *currentDate = [NSDate date];
    NSLog(@"%@", currentDate);
    NSDate *newDate = [currentDate dateByAddingTimeInterval:60*60*24];
    NSLog(@"%@", newDate);
    
}


//Жаль конечно что многое не успел, но лучше хоть что-то чем ничего/
- (void)buttonClickUp:(id)sender {
    NSLog(@"Я всё равно верю в победу! И буду стараться не смотря ни на что!!!");
}

@end

