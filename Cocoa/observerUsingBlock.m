__block id observer = [[NSNotificationCenter defaultCenter] addObserverForName:NSManagedObjectContextDidSaveNotification
                                                  						object:nil
																		 queue:nil
                                              						usingBlock:^(NSNotification *notification) {
						                                          [[NSNotificationCenter defaultCenter] removeObserver:observer
						                                                                                          name:NSManagedObjectContextDidSaveNotification
						                                                                                        object:nil];
                                              }];