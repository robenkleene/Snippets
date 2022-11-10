NSError *error;
if (![managedObjectContext save:&error]) {
     // Replace this implementation with code to handle the error appropriately.
     // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. 
    NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    abort();
}