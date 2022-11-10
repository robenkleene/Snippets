class RecuLogger:
    """
    RecursiveLogger
    """
    def __init__(self):
        self.level = 0

    def inc(self):
        """
        inc
        """
        self.level += 1

    def print(self, string):
        """
        print
        """
        print("\t" * self.level, self.level, ":", string)


