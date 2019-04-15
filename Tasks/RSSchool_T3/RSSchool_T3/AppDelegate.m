#import "AppDelegate.h"
#import "DateMachine.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  [self.window setRootViewController:[DateMachine new]];
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];
  

    NSArray *array = @[@[@0, @1, @2], [NSNull null], @[@"123",@"456",@"789"], @[@[@[@1337], @{@"Key": @"Value"}]]];
    NSArray* a = [array objectAtIndex:0];
    NSNull* b = [array objectAtIndex:1];
    NSNumber* c = [array objectAtIndex:2];
    NSString *object = [array objectAtIndex:3];
    //NSString *d = [object description];
    NSString *d = [[object valueForKey:@"description"] componentsJoinedByString:@""];
    NSLog(@"object d - >%@",d);
    NSArray *arrayprint = [[NSArray alloc]initWithObjects: a,b,c,d,nil];
    NSLog(@"array ->%@", arrayprint);
    NSLog (@"[%@]", arrayprint);
    
    
    DateMachine *vc = [[DateMachine alloc] init];
    [_window setRootViewController:vc];
    [vc release];
    
    self.window.backgroundColor = [UIColor cyanColor];
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
}


- (void)applicationWillTerminate:(UIApplication *)application {
}


@end
