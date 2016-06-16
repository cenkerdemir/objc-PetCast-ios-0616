//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISDog *firstDog = [[FISDog alloc] init];
    
    NSLog(@"%@",[firstDog makeASound]);
    NSLog(@"%@",[firstDog assaultTheMailman]);
    
    //casting to a dog object. it's still calling the FISPet's method
    FISPet *firstPet = [[FISPet alloc] init];
    FISDog *petToDog = (FISDog *)firstPet;
    NSLog(@"%@",[petToDog makeASound]);
    
    //this will create an uncaught exception as we are sending a message to a method that does not exist in FISPet class, petToDog is really a pet object but cast as a dog object...
    //NSLog(@"%@",[petToDog assaultTheMailman]);

    FISPet *dogToPet = (FISPet *)firstDog;
    NSLog(@"%@", ((FISDog *)dogToPet).assaultTheMailman);
    
    FISPet *dogToPetTwo = [[FISDog alloc] init];
    NSLog(@"%@",((FISDog *)dogToPetTwo).assaultTheMailman);
    
    return YES;
}

@end
