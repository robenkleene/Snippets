#define kNameKeyPath @"name"

- (id)initWithDictionary:(MyClass *)myObject 
{
    self = [super init];
    if (self) {
		_myObject = myObject;
		[myObject addObserver:self forKeyPath:kNameKeyPath options:NSKeyValueObservingOptionNew context:NULL];
    }
    return self;
}

- (void)dealloc
{
	[_myObject removeObserver:self forKeyPath:kNameKeyPath context:NULL];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context 
{
    if (object == self.myObject && [keyPath isEqualToString:kNameKeyPath]) {
        NSString *changedName = [change objectForKey:NSKeyValueChangeNewKey];
        // do something with changedName
    }
}