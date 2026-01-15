/*
Semi-automated ImageJ macro for mitochondrial morphology analysis

This macro assists batch processing of images and requires manual execution
of the MiNA plugin for mitochondrial morphology analysis.

MiNA plugin:
https://github.com/StuartLab/MiNA
*/

// Select input and output directories
inputDir = getDirectory("Select input image directory");
outputDir = getDirectory("Select output directory");

// Get file list
fileList = getFileList(inputDir);

// Display file list for confirmation
Array.show(fileList);

// Loop through all images
for (i = 0; i < fileList.length; i++) {

    // Open image
    open(inputDir + fileList[i]);

    // Pause for manual MiNA execution
    waitForUser(
        "Run MiNA manually:\n" +
        "Plugins > MiNA > Analyze Morphology\n\n" +
        "After finishing MiNA analysis, click OK to continue."
    );

    // Close image after processing
    close();
}
