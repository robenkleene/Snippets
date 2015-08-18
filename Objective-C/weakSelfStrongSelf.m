__weak __typeof__(self) weakSelf = self;
self.myBlock = ^{
    __typeof__(self) strongSelf = weakSelf;
    if (strongSelf)
    {
        strongSelf.someProperty = xyz; 
    }
};