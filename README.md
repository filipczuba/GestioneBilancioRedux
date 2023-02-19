# GestioneBilancio

Simple Java implementation of bookkeeping software.

The software has the following functionalities:

- Adding, editing and deleting entries;
- Searching entries based on their description's contents;
- Filtering the entries based upon a time interval;
- Automatically saving the entries and loading them upon opening;
- Manually saving and loading a list of entries from a file;
- Exporting the list of entries as plain text or CSV;
- Printing.

The software is commentend in italian with Javadoc-style comments and doesn't use any external library. The UI is handled by Java Swing.

The included makefile has the following functionalities:

- Compiling the program (make);
- Running the program (make run);
- Creating Javadoc documentation (make docs);
- Deleting all compiled files (make clean);
- Deleting all the compiled files, files generated by Javadoc and files and folders generated by the program during runtime (make cleanall).

This assignment has been the final exam for the Object Oriented Programming course held at Università di Modena e Reggio Emilia, as part of the 
Computer Science curriculum.
