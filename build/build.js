(function() {
	load("../s8/boot.js");
	load("../s8/s8.image.js");
	load("../s8/initialize.js");
	load("../s8/initialize.st.js");
	smalltalk.launchImage("../s8/s8.image.js");
	emmit('../quini6/quini6.st');

	smalltalk.$imageFileName = "../quini6/console.snapshot.js";
	print("// snapshot at "+smalltalk.$imageFileName);

	" Snapshot outputToFile: Smalltalk current imageFileName ".doIt();

	print("// Finished - quit to OS");
	quit();

})();