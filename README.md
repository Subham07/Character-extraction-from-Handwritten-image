# Character-extraction-from-Handwritten-image
To extract lines, words and characters and also calculating spaces between them. Additionally finding all closed loops letters and their radii


Flow of code is given below:

1. lineseg.m : extracting lines and calculating spaces between consecutive such lines.

2. linehash.m: calculation of hash values to be used afterwards

3. wordextract.m : using the above created hash values, word extraction done from each line and space is calculated

4. charextspace.m: extracting characters, using words extracted earlier, and calculating spaces between consecutive such characters.

5. circleFind.m: finding all closed loops in letters and storing radius

6. finally we calculate mean as shown in charextspace.m

====
1. rtlineseg.m : if lines are written in an inclined way, here we normalize it (straightening) and put the resulting image into "rotated" variable.

2. rtproj.m : calculation of spaces between lines using the above formed normalized image.

rest same as above.

Suggested to run codes in MATLAB. Also change image file name wherever required.
