# Oculus Service Manager ( OSM )
Its just batch script that basically runs Windows shell commands.\
Made for pure convinience, and accessibility for normies!

## Install Guide
So its simple.\
Download it, then run the script.
\
But thats cluttery, nobody wants to seek a batch file just to play VR.
So my recommendation would be to put it in your `path` directory.

## Ok, so how do i make a path directory?
 Its actually simple to make one!
 To make one do the following.
1. Make a folder somewhere on your computer, for example `C:\Path\` **Remember that path!**
2. Open the start menu.
3. Type `environment variables`
4. Open the first thing.\
![This.](https://cdn.discordapp.com/attachments/863762897205198908/902975334880804864/chrome_MsfkG8kjE3.png)

6. Click `Environment Variables`\
![This button in red lel](https://cdn.discordapp.com/attachments/863762897205198908/902975798670151760/unknown.png)

7. Once in the Environment Variables submenu, look for `Path` under the `System variables` then press `Edit`\
![Follow the dots](https://media.discordapp.net/attachments/863762897205198908/902976930205290536/unknown.png)

8. Then Press `New` and type the path of the folder you've created earlier, then press `Enter` then press `OK`\
![wow! a yif!](https://cdn.discordapp.com/attachments/863762897205198908/902977678783705098/jtl9vNx4bw.gif)

## Tada! you've a path folder!
So you might be asking `okay so? what is it for?` its an universal access folder, meaning you can access from anywhere you want, despite in what directory you are in. pretty neat huh?

So go ahead and put `osm.bat` in your Path folder and try it now!
The quickest way to open something in your Path folder is from the `Run` window.
So to do it, you press `Win` + `R` to open the `Run` window\
![wowowowo](https://cdn.discordapp.com/attachments/863762897205198908/902979944924188682/unknown.png)
\
Go ahead and type `osm` then press `Enter` to fire up OSM.

## Updating OSM
so the quickest way of doing it would be doing the following.

1. Go to your path folder where `osm.bat` resides.

2. **IF YOU HAVE WGET** run this command\
`wget -O osm.bat https://raw.githubusercontent.com/japannt/OculusServiceManager/main/osm.bat`\
***NOTICE!***
**IF YOUR OSM IS NAMED DIFFERENTLY REPLACE `-O osm.bat` WITH `-O *your name*.bat` !**

2. **IF YOU DONT HAVE WGET** run this command instead\
`curl https://raw.githubusercontent.com/japannt/OculusServiceManager/main/osm.bat --output osm.bat`\
***SAME NOTICE!***
**IF YOUR OSM IS NAMED DIFFERENTLY REPLACE `--output osm.bat` WITH `--output *your name*.bat` !**
