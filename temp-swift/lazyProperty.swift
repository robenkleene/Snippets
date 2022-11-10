lazy var importer = DataImporter()

private(set) lazy var identifier: String = {
	return self.computedIdentifier
}()