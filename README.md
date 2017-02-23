I built this script to save time when we create new Node servers built with Express and body-parser.

Instructions
1. clone this repo somewhere on your machine
2. setup a location to save the templates folder
  -Client.js
  -Index.html
  -jquery
  -app.js
  -style.css

  These files will be the boilerplate files that have only the minimal amount of syntax.

3. Edit the variable 'TEMPLATE_DIR' on line 2 of newNodeProject.sh to reflect the location of the 'templates' folder on your machine.

4. execute the following command in Terminal:

'chmod 700 newNodeProject.sh'

This makes the file an executable (a.k.a, a program.  Yep, you are a PROGRAMMER! :)  Until you do this, the file is just a text file filled with stuff that operating system has no idea how to handle.

Now that the script is an executable file you simply have to copy into your lecture and/or assignments directory and it will spin up a new Node project for you!  You will need a copy of the .sh file in any directory you'll want to spin up new servers.  In my case, I would put a copy in my "lecture" and "assignments" folders.  

When I want to spin up a new server, I just open up Terminal, navigate to my root 'lecture' folder:

~/development/prime/lecture>

and enter:

~/development/prime/lecture>./newNodeProject.sh

If I want to a new server for an assignment, I would go to:

~/development/prime/assignments>

and enter ~/development/prime/assignments>./newNodeProject.sh

FYI: the './'simply means "this folder".  So we are telling the computer to please execute the terminal commands in .sh file called 'newNodeProject.sh' located in this folder.
