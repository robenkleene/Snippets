NSUInteger index = [<#Array#> indexOfObjectPassingTest:^BOOL (id obj, NSUInteger idx, BOOL *stop) {
	id object = obj;	
	return <#Test#>;
}];
if (index != NSNotFound) {
	return [<#Array#> objectAtIndex:index];
} else {
	return nil;
}
