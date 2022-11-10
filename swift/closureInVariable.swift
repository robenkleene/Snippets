let testProcessManager: (processManager: ProcessManager) -> Void = { processManager in
    let returnedProcessInfo = processManager.processInfoWithIdentifier(processInfo.identifier)!
    XCTAssertNotNil(returnedProcessInfo)
    XCTAssertEqual(returnedProcessInfo, processInfo)
    
    let returnedProcessInfos = processManager.processInfos()
    XCTAssertEqual(returnedProcessInfos.count, 1)
    XCTAssertEqual(returnedProcessInfos[0], processInfo)
    
    let invalidProcessInfo = processManager.processInfoWithIdentifier(999)
    XCTAssertNil(invalidProcessInfo)
}