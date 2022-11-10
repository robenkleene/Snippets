@implementation

static void *MYContext;

#define kNameKeyPath @"name"

- (id)initWithDictionary:(MyClass *)myObject
{
    self = [super init];
    if (self) {
		_myObject = myObject;
		[myObject addObserver:self forKeyPath:kNameKeyPath options:NSKeyValueObservingOptionNew context:&MYContext];
    }
    return self;
}

- (void)dealloc
{
	[_myObject removeObserver:self forKeyPath:kNameKeyPath context:&MYContext];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context != &MYContext) {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
        return;
    }


    if (object == self.myObject && [keyPath isEqualToString:kNameKeyPath]) {
        NSString *changedName = [change objectForKey:NSKeyValueChangeNewKey];
        // do something with changedName
    }
}

@end
