//
//  HZURLManager.m
//  ZHFramework
//
//  Created by xzh. on 15/8/21.
//  Copyright (c) 2015年 xzh. All rights reserved.
//

#import "HZURLManager.h"
#import "NSObject+HZExtend.h"
@implementation HZURLManager
singleton_m

+ (instancetype)sharedManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            
        });
    }
    return self;
}

+ (void)dismissCurrentAnimated:(BOOL)animated
{
    [HZURLNavigation dismissCurrentAnimated:animated];
}

@end


@implementation HZURLManager (URLManagerDeprecated)

#pragma mark - push
+ (void)pushViewControllerWithString:(NSString *)urlstring animated:(BOOL)animated
{
    if (!urlstring.isNoEmpty) return;
    
    UIViewController *viewController = [UIViewController viewControllerWithString:urlstring];
    if (viewController)
        [HZURLNavigation pushViewController:viewController animated:animated];
}

+ (void)pushViewControllerWithString:(NSString *)urlstring queryDic:(NSDictionary *)query animated:(BOOL)animated
{
    if (!urlstring.isNoEmpty) return;
    
    UIViewController *viewController = [UIViewController viewControllerWithString:urlstring queryDic:query];
    if (viewController)
        [HZURLNavigation pushViewController:viewController animated:animated];
}

+ (void)pushViewController:(UIViewController *)ctrl animated:(BOOL)animated
{
    [HZURLNavigation pushViewController:ctrl animated:animated];
}

#pragma mark - Present
+ (void)presentViewControllerWithString:(NSString *)urlstring animated:(BOOL)animated completion:(void (^ _Nullable)(void))completion
{
    if (!urlstring.isNoEmpty) return;
    
    UIViewController *viewController = [UIViewController viewControllerWithString:urlstring];
    if (viewController)
        [HZURLNavigation presentViewController:viewController animated:animated completion:completion];
}

+ (void)presentViewControllerWithString:(NSString *)urlstring queryDic:(NSDictionary *)query animated:(BOOL)animated completion:(void (^ _Nullable)(void))completion
{
    if (!urlstring.isNoEmpty) return;
    
    UIViewController *viewController = [UIViewController viewControllerWithString:urlstring queryDic:query];
    if (viewController)
        [HZURLNavigation presentViewController:viewController animated:animated completion:completion];
}

+ (void)presentViewController:(UIViewController *)ctrl animated:(BOOL)animated completion:(void (^)(void))completion
{
    [HZURLNavigation presentViewController:ctrl animated:animated completion:completion];
}


@end