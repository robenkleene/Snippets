- (NSString *)description {
    NSMutableString *descriptionExtension = [NSMutableString string];
    [descriptionExtension appendFormat:@"; <#PropertyName#> = %@",<#PropertyValue#>];
    return [[super description] stringByAppendingString:descriptionExtension];
}
