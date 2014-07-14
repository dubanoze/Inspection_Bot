Eclipse Integration
==============

Eclipse Setup
---

Download and install [Eclipse Standard 4.3.2](https://www.eclipse.org/downloads/index-developer.php?release=kepler "Eclipse Download")

Open Eclipse and go to Help --> Eclipse Marketplace 

![Alt text][Open_Marketplace]

Download and install the following pluggins:

- PyDev

- EGit

- Rinzo

![Alt text][Marketplace_Installed_Programs]

Import Git Repo
---

Go to File --> Import and select 'Projects from Git'

![Alt text][import_screen]


Select Clone URI

![Alt text][clone_screen]

Enter in the github http link into the URI field.  The rest should autocomplete

![Alt text][uri_screen]

Select which branches to download (just choose master)

![Alt text][branch_select]

Choose location to save the git repo.  Most people usually save it inside a general git folder located at their home directory

![Alt text][save_location]

In the import wizard selection screen choose import as general project

![Alt text][import_wizard_selection]

On the import project screen leave the project name as its default and click 'Finish' to complete import. 

![Alt text][project_naming]

Run Project
---
**Important!** When running a python program for the first time, eclipse may ask you to configure the interpeter.  If it does select 'autoconfigure' when prompted.

Right click on the project folder and select Pydev --> Set as Pydev Project

![Alt text][pydev_project]

Go to the Camera directory and right click on auto_snap_camera.  Then select Run As --> Python Run. 

![Alt text][run_project]

If USB microscope is connected to the computer, the program should start running and begin saving images to the 'saved_images' directory. Right click on the 'save_images' directory and click 'Refresh' to see the saved images.    

![Alt text][run_camera]

Integration with Pronterface
---

Clone the [Pronterface repository](https://github.com/kliment/Printrun) to your file system (follow 'Import Git Repo' directions)

Right click on Inspection_Bot in eclipse and select 'Properties'. Then select the 'pydev-PYTHONPATH' bar followed by the 'External Libraries' tab

Select 'Add Source Folder' then enter the path where pronterface was downloaded.

![Alt text][pronterface_setup]
 

[Open_Marketplace]: /Eclipse_Integration_Screen_Captures/Eclipse_Marketplace.png

[Marketplace_Installed_Programs]: /Eclipse_Integration_Screen_Captures/eclipse_marketplace_install_programs.png

[import_screen]: /Eclipse_Integration_Screen_Captures/Import_screen.png

[clone_screen]: /Eclipse_Integration_Screen_Captures/clone_screen.png

[uri_screen]: /Eclipse_Integration_Screen_Captures/uri_host_screen.png

[branch_select]: /Eclipse_Integration_Screen_Captures/branch_selection.png

[save_location]: /Eclipse_Integration_Screen_Captures/git_save_location.png

[project_naming]: /Eclipse_Integration_Screen_Captures/final_naming_of_project.png

[import_wizard_selection]: /Eclipse_Integration_Screen_Captures/import_selection.png

[pydev_project]: /Eclipse_Integration_Screen_Captures/set_as_pydev_project.png

[run_project]: /Eclipse_Integration_Screen_Captures/running_project.png

[run_camera]: /Eclipse_Integration_Screen_Captures/running_program.png

[pronterface_setup]: /Eclipse_Integration_Screen_Captures/Pronterface_Integration.png
