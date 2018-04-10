# Medical Device App

## Overview
This repository contains ruby code to run a web app for a medical device that consists of a buzzer, a Galvanic Skin Response (GSR) sensor, and a 4-digit display connected to a TI C32200 board.

## Pre-Reqs

In order to run this, the user will need to have rails installed and bundler installed. For more information on installing rails and bundler see ? document ?

To see the live updating web app functionality implemented in the “live_update” branch or the “live_change_display” branch, the user must also have a redis server installed.

## Branches

There are four branches in the repository.

* The ‘master’ branch contains code for rails application for the Medical Device.
* The ‘change_display’ branch builds off the master branch and contains additional logic to display the data from the GSR sensor on the 4-digit display.
* The ‘live_update’ branch also builds off the master branch but contains additional logic to automatically update the data from the GSR sensor on the web app. 
* The ‘live_change_display’ branch contains the additional logic from the change_display branch AND the live_update branch, to both update the display AND automatically update the web app with data from the GSR sensor.

Note: The live_update branch and live_change_display branch both require a redis server to be installed by the user in order to see live updates on the web app.

## Implementation

1. Select the branch with the functionality you want, and clone it into your local. 

2. For the ‘change_display’ or ‘live_change_display’ branches, navigate to app/models/medical_device/galvanic_skin_response_sensor.rb and insert the name of your device on line 53 where it says #insert device name here in quotes.  For the rails conference, the name of your device can be found on a sticker attached to your board.  Otherwise, the name can be found on the apiotics site … 

3. To start communication with the web app, run the command ’rake dev_comms:start’ 

Note: 
Every time you change the code you will need to run ‘dev_comms:restart’ (or ‘dev_comms:stop’ then ‘dev_comms:start’) in order to see the updates on the web app. 


4. ’rails console’ (or ‘rails c’)  to launch a console.

5. In the console run ‘MedicalDevice.sync_devices’

6. Exit the console with the command ‘exit’

7. Run ’rails server’ (or ‘rails s’)
For the live_update and live_change_display branches, you will also need to start a redis server by opening a new terminal and running ‘redis-server’.  Leave this terminal open in the background.  

8. To see the web app, browse to http://localhost:3000/medical_devices.



# References

