<div align="center">

## Add Start Menu Uninstall Icon to your VB Projects


</div>

### Description

This article will detail in 10 easy steps how to create your own Uninstall icon (and place it in the Program Group) for every VB project that you create.

PLEASE, TAKE AN EXTRA MINUTE TO VOTE FOR THIS ARTICLE IF YOU LIKE IT.

Thanks, Christopher.
 
### More Info
 


<span>             |<span>
---                |---
**Submitted On**   |2003-03-09 00:22:42
**By**             |[Christopher Reason](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByAuthor/christopher-reason.md)
**Level**          |Beginner
**User Rating**    |4.9 (54 globes from 11 users)
**Compatibility**  |VB 6\.0
**Category**       |[Coding Standards](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByCategory/coding-standards__1-43.md)
**World**          |[Visual Basic](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByWorld/visual-basic.md)
**Archive File**   |[Add\_Start\_155689392003\.zip](https://github.com/Planet-Source-Code/christopher-reason-add-start-menu-uninstall-icon-to-your-vb-projects__1-43868/archive/master.zip)





### Source Code

<p><font face="Verdana" size="2">This article will detail in <b>10 easy </b>steps
how to create your own Uninstall icon (and place it in the Program Group) for
every VB project that you create. The problem with P&D Wizard is that it
will not allow you to create an icon in the icon group that points to
St6unst.exe (the uninstaller for VB). I have created program for my family, they
have installed them, and then in their infinite wisdom, simply gone into My
Computer and deleted the folder(s) for the program not realizing that they <b>must</b>
go to Add/Remove Programs to uninstall it from there. This deletes the
St6unst.log file and thus renders the uninstall process null and void! So we are
going to provide "computer illiterate" people (like my family) with
another icon, in the start menu of your program, to uninstall your program!</font></p>
<p><font face="Verdana" size="2">Before we get started, just a quick note to
help you read the article better. Any text in <i>Italics</i><font color="#008000">
</font>will denote text that is optional or can be renamed as you choose. Ok,
let's get started!</font></p>
<ol>
 <li><font face="Verdana" size="2">Create a new Standard Project in VB, add one
 Form and one Module (bas) to the project.</font></li>
 <li><font face="Verdana" size="2">Rename the Project <i>Uninstall</i>, and the
 Module <i>unInstall.</i></font></li>
 <li><font face="Verdana" size="2">Add an icon to <i>Form1</i> (the form does
 not really need to be renamed as the form will <b>only</b> be used for its
 icon), I use the icon located at <i>Program Files\Microsoft Visual Studio\Common\Graphics\Icons\Win95</i><i>\RECYFULL.ICO</i>.</font></li>
 <li><font face="Verdana" size="2">In the <i>unInstall</i> module add a
 "Sub Main". Go to Project Properties and set "Sub Main"
 as the startup object. While in the Project Properties, click on the Make
 Tab and click on the Icon dropdown to select <i>Form1.</i> This sets your
 executables Icon to the icon you chose for <i>Form1</i>.</font></li>
 <li><font face="Verdana" size="2">In Sub Main add the following lines of code
 (this is the only code needed for your uninstaller program) which will open
 the Add/Remove Programs Dialog of the Control Panel:<br>
 <br>
 <font color="#000080">Sub</font> Main()<br>
     <font color="#008000">'opens the Add/Remove Programs
 dialog of the Control Panel</font><br>
     Shell "rundll32.exe shell32.dll,Control_RunDLL
 appwiz.cpl,,1"<br>
     <font color="#000080">End</font><br>
 <font color="#000080">End Sub<br>
 </font></font></li>
 <li><font face="Verdana" size="2">Save the project to it's own folder (<i>location
 of your choice</i>) and compile the project to the same folder.</font></li>
 <li><font face="Verdana" size="2">Now, whenever you package a project, include
 this <i>Unistall.exe</i> file with your other project files. During the
 Package process, when you get to the Included Files, click the Add button
 and navigate to the folder where you compiled the <i>Unistall.exe</i>
 program and include that file with your current project.</font></li>
 <li><font face="Verdana" size="2">A few steps later in the Start Menu Items
 step, click New Item. Name the New Item <i>Uninstall APPNAME</i> (where
 APPNAME is the name of the application that you are currently packaging).</font></li>
 <li><font face="Verdana" size="2">Set the Target for this New Item to the <i>Uninstall.exe
 </i>file.</font></li>
 <li><font face="Verdana" size="2">In the next step, Install Locations, be sure
 that the install location for your <i>Uninstall.exe</i> file is the
 ($AppPath) macro.</font></li>
</ol>
<p><font face="Verdana" size="2"><b>You've done it!</b> A very simple, easy way
to safe guard your users from, well, themselves! Now every time they go to the
start menu to run your program, they will see the "<i>Uninstall</i>"
icon there as well. When they click on this <i>Uninstall APPNAME </i>icon, it
will open the Add/Remove Programs Dialog of the Control Panel and prompt them to
uninstall the program from there!</font></p>
<p><font face="Verdana" size="2">I hope that you find this article useful. If
you do <b>please be sure to come back and vote! </b>I would appreciate your
votes AND comments too. Hope you have a great day! </font></p>
<p><font face="Verdana" size="2">Christopher</font></p>

