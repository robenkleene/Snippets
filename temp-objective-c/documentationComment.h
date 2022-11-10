/*! My custom code to remove evil strings from otherwise nice arrays.
 * \param myArray An array that has some nasty string hiding inside
 * \param myString A nasty string that must be removed from the array
 * \returns A new array, copied from the passed array, minus the string
*/
- (NSArray*)filterArray:(NSArray*)myArray withString:(NSString*)myString;