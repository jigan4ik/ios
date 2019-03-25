#import "AppDelegate.h"
#import "SummArray.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setRootViewController: [UIViewController new]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    //!!!DISCLAIMER!!!
    /* Прошу отнестись к выполненому заданию снисходительно т.к. изучать программированние вообще я начал всего месяц назад (практически с началом Ваших куросв), пока ещё не всё допонимаю, но буду стараться. Балов не получу, но делал как мог, поэтом и отправляю на Вашу проверку. */
    
//Задание первое/
   
    NSInteger arrayLeght = 6;
    NSArray *array = [[NSArray alloc] initWithObjects: @(1), @(2), @(3), @(4), @(10), @(11), nil];
    NSNumber* SummArray = [array valueForKeyPath: @"@sum.self"];
    NSLog(@"%@", SummArray);
    NSLog(@"%i", [array count]);

    //*************************************************************/

//Задание второе/
    
    NSArray *array2 = @[
                        @[@11, @2, @4],
                        @[@4,  @5, @6],
                        @[@10, @8, @-12],
                        ];
    NSNumber *a = array2[0][0];
    NSNumber *b = array2[1][1];
    NSNumber *c = array2[2][2];
    NSInteger* sumL = [a intValue] + [b intValue] + [c intValue];
    NSLog(@"%d", sumL);
    
    NSNumber *d = array2[0][2];
    NSNumber *e = array2[1][1];
    NSNumber *f = array2[2][0];
    NSInteger* sumR = [d intValue] + [e intValue] + [f intValue];
    NSLog(@"%d", sumR);
    
    NSInteger v1 = sumL;
    NSInteger v2 = sumR;
    NSInteger *sum2 = v1 - v2;
    NSLog(@"%d", abs(sum2));
    
    //*************************************************************/
    
//Задание третье (работает не правильно, но я работаю над исправлением багов).
   
    NSString *firstSentense = @"We promptly judged antique ivory buckles for the next prize";
    //NSString *secondSentense = @"We promptly judged antique ivory buckles for the prize";
    NSString *alphabet = @"abcdefghijklmnopqrstuvwxyz";
    NSInteger X = 0;
    
    for (int i=0; i < [firstSentense length]; i++) {
        unichar s = [firstSentense characterAtIndex:i];
        
        for (int i=0; i < [alphabet length]; i++){
            unichar b = [alphabet characterAtIndex:i];
            if (b = s){
                X = X+1;
            }
        }
    }
    if (X = 26) {
        NSLog(@"Sentense is Pangrams");
    } else {
        NSLog(@"Sentense is Not Pangrams");
    }
    
    //Больше не успел, но трудился много/
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {}
- (void)applicationDidEnterBackground:(UIApplication *)application {}
- (void)applicationWillEnterForeground:(UIApplication *)application {}
- (void)applicationDidBecomeActive:(UIApplication *)application {}
- (void)applicationWillTerminate:(UIApplication *)application {}
@end
