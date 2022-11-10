DispatchQueue.global(qos: .background).async {
    // Background Thread
    DispatchQueue.main.async {
        // Run UI Updates
    }
}
