@echo off

set valPath="(add your valorant path here)\Riot Games\VALORANT\live\ShooterGame\Content\Movies\Menu\HomeScreen.mp4"
set videoPath="%CD%\HomeScreen.mp4"
REM set videoPath="(remove 'REM' and replace this by your custom video path)\HomeScreen.mp4"

%USERPROFILE%\Desktop\VALORANT.url
del %valPath%
xcopy %videoPath% %valPath%*

mshta "about:<script>alert('Press "Ok" when you see Play on riot client, then wait.');close()</script>"

del %valPath%
xcopy %videoPath% %valPath%*
%USERPROFILE%\Desktop\VALORANT.url
