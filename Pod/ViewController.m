#import "ViewController.h"

#import "NSJSONSerialization+ANDYJSONFile.h"

#import "FORMDataSource.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init
{
    FORMLayout *layout = [[FORMLayout alloc] init];
    self = [super initWithCollectionViewLayout:layout];
    if (!self) return nil;

    NSArray *JSON = [NSJSONSerialization JSONObjectWithContentsOfFile:@"forms.json"];
    FORMDataSource *dataSource = [[FORMDataSource alloc] initWithJSON:JSON
                                                       collectionView:self.collectionView
                                                               layout:layout
                                                               values:nil
                                                             disabled:NO];
    self.collectionView.dataSource = dataSource;

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
}

@end
