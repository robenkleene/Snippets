@interface DJContentManagerHelper ()
- (void)issueDidLoadLoadNotification:(NSNotification *)notification;
@end

@implementation DJContentManagerHelper

- (id)init {
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(issueDidLoadNotification:) name:IKIssueDidLoadNotification object:nil];
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


- (void)issueDidLoadLoadNotification:(NSNotification *)notification
{
    Issue *issue = [notification object];
    NSString *identifer = issue.key;

    kContentManager.currentIssueKey = identifer;
}


@end