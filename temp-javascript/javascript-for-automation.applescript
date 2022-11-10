App = Application.currentApplication();

finder = Application('Finder');
finder.activate();

delay(1);

App.includeStandardAdditions = true;

var frontMostApplicationProcesses = Application("System Events").processes.whose({ frontmost: true });
var applicationProcess = frontMostApplicationProcesses[0];
var firstWindow = applicationProcess.windows()[0];
if (firstWindow) {
  App.displayDialog("test = " + Automation.getDisplayString(firstWindow));
}