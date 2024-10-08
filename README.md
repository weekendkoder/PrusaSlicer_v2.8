<!-- 
COMMENTS:
This content will not appear in the rendered Markdown 
<br>
# ${This\ is\ a\ {\color{red}Big}}\ Title$
<br>
$${\color{red}This \space is \space red}$$
$${\color{blue}This \space is \space blue}$$
$${\color{green}This \space is \space green}$$
<br>
${\color{green}This \space is \space green}$  <-- left aligned
$${\color{green}This \space is \space green}$$  <-- middle aligned
<br>
### Using Diff Syntax Highlighting
```diff
- This text will be red
+ This text will be green
! This text will be orange
# This text will be gray
@@ This text will be purple @@
```
<br>
> ``` This text will be green```
<br>
<mark>**| 4 .**</mark> delete both *.zip´s, if you like
<br>
<span style="color:red">text in red</span>
<br>
![](message=gdgdg&color=green)
<br>
$\color{lightblue}{\textrm{this is a example text by me}}$  
$\color{lightblue}{\textrm{"=RAW_PrusaSlicer_ROAMING=.zip"}}$   <-- "_" does not work here
<br>
> $\color{red}{\textrm{This text will be gdsfgd gdgdfg}}$
-->

PrusaSlicer vers. 2.80 for Anycubic Kobra 3 combo
=================================================
This is a portable *PrusaSlicer v2.80* for *Anycubic Kobra 3 combo* which includes 
already all nescecary files (profiles) to start right away printing with PLA.
You can modify and set everything to different materials like PETG (which should be easy for you).
<br>
![alt text](https://github.com/weekendkoder/PrusaSlicer_v2.8/blob/media_files/PrusaSlicer.png)

<ins>**MOTIVATION:**</ins>
<br>
I don´t like to use the regular "Anycubic Sclicer". I also don´t like to use the modified ver. of OrcaSlicer by Anycubic.
The original PrusaSlicer is fast and reliable. Therefore i wanted it to work with Anycubic Kobra 3 combo multimaterial.
<br>

In my case, it works with the ACE Pro - Multimaterial & without. It prints very well. This way, i have all the new features from
the PrusaSlicer i would like to use. Staying with Anycubic Slicer, new features would take time, to be implemented.
<br>

<ins>2nd Point:</ins>
<br>
Your Profiles are stored inside a folder "PrusaSlicer" which is located under a folder "Roaming" inside the users folder.
If you change your computer, or if you have 4x laptops at home, you like to have an App "really" portable. Otherwise you will be busy 
copying files and folders, or be forced to make adjustments again, or be busy importing settings.
<br>

This is why i automated the process via a batch file to just click the link / *.bat file without the need to pay attention
which computer i use or where i copyied the App. Thats the benefit of portable apps.
<br>
<br>


CHANGELOG
==========
I optimized the Kobra 3 Profile for my purposes. So you have the option to use the NEW-settings, or keep the old ones.
These files are containing the Updates:
- =RAW_PrusaSlicer_ROAMING=_v2.zip
- =PrusaSlicer_CONFIG-BUNDLE=_v2.ini
<br>

<ins>**Parameters that got updated:**</ins>
<br>
<br>
-> Print Settings -> Speed: 

    - Infill: 150
    - Support Material Interface: 120
-> Print Settings -> Advanced: 

    - First Layer: 0.4 (is now controlled via G-Code macros)
    - Perimeters: 0.4
    - External Perimeters: 0.4
    - Infill: 0.4
-> Filaments -> Advanced: 

    - max. Volumetric Speed: 0 (0 means, no limits.)
-> Filaments -> Overrides: 

    - Lift Heights: 0.6 (to not kick out smaller Objects, when warped) 
-> Printers -> General: 

    - G-code Thumbnails: 320x200/PNG (to got a picture of your Print on your Print-Screen)
-> Printers -> Custom G-Code: 

    - Before Layer Change G-code: M221 S{if layer_num==0}120{else}93{endif}  ; sets only 1st_layer extr.multipl. a bit higher !
<br>

Make this version work, step by step:
=====================================
![alt text](https://github.com/weekendkoder/PrusaSlicer_v2.8/blob/media_files/Folder_structure.png)
<br>
<mark>**| 1 .**</mark> Download this repo, via --> Code --> Download ZIP

<mark>**| 2 .**</mark> unpack the Zip. You will got a folder called "PrusaSlicer_v2.8-main".

<mark>**| 3 .**</mark> inside this folder, you need to:

   > ```unpack "=RAW_PrusaSlicer_ROAMING=.zip" (=RAW_PrusaSlicer_ROAMING=_v2.zip) to "_PrusaSlicer_ROAMING"```

   > ```unpack "PrusaSlicer_DLL.zip" to "PrusaSlicer.dll"```

<mark>**| 4 .**</mark> delete both *.zip´s, if you like

<mark>**| 5 .**</mark> go into the subfolder "resources" and unpack:

   > ```"resources.zip.001"```

   which outputs many subfolders

<mark>**| 6 .**</mark> delete both "resources.zip.001" & "resources.zip.002", if you like

<mark>**| 7 .**</mark> go back to the root-folder & start "prusa-slicer_START.bat" as <ins>admin</ins>, 
    which automates the process of linking your "Roaming"-Folder "PrusaSlicer" 
    whereever you move your PrusaSlicer App or use a different Computer, for 
    example.

**(This steps where needed, because GitHub dont allow you to upload files that are bigger than 25MB, via Browser)**
<br>
<br>

If you only aming for the profiles, without using my version of PrusaSlicer:
============================================================================
Your Profiles are stored inside a folder "PrusaSlicer" which is located under a folder "Roaming" inside the users folder.
You can copy all this manually, or you can use the build-in function of PrusaSlicer to import a "config bundle". The "config bundle"
is inside this PrusaSlicer version, named: **"=PrusaSlicer_CONFIG-BUNDLE=.ini"**. (Use **"=PrusaSlicer_CONFIG-BUNDLE=_v2.ini"** if you want the updated vers.) This means you can have the official PrusaSlicer App
installed and only downloading my "=PrusaSlicer_CONFIG-BUNDLE=.ini" config bundle.
<br>
![alt text](https://github.com/weekendkoder/PrusaSlicer_v2.8/blob/media_files/Config_Bundle.png)
<br>
<br>

Be aware, my P.S.-configuration is not super optimized:
=======================================================
But it works fine for me, with fast printing in a good quality. I adapted all values / parameters as good as i could from the regular *Anycubic Slicer*. Feel free to optimize it by yourself.
Make some comments or report issues, if you like.


