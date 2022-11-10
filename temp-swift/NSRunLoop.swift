let timeoutDate = NSDate(timeIntervalSinceNow:0.1)
var finished = false
var timedOut = false
while (!finished && !timedOut) {
    timedOut = (timeoutDate.compare(NSDate()) == .OrderedAscending)
    finished = (container.activeManifests().count < 2)
    
    
    if (!finished && !timedOut) {
        let nextPollingDate = NSDate(timeIntervalSinceNow: 0.01)
        NSRunLoop.currentRunLoop().runUntilDate(nextPollingDate)
    }
}
