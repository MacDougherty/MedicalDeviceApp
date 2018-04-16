# Medical Device App

## Overview

This repository contains code to run a Ruby on Rails web application for a "medical" device, which consists of a buzzer, a Galvanic Skin Response (GSR) sensor, a heart rate sensor, and a 4-digit display connected to a TI C32200sf board via a Grove Base Boosterpack.

The web application allows users to see data from the sensors in a browser window.


## Requirements

In order to use this code, you will need to have rails installed and bundler installed. 

To see the live updating web app functionality implemented in the `live_update` branch or the `live_change_display` branch, you will also need to also have a redis server installed.  If you are on a mac, you can do this by running `brew install redis`.


## Set up

Connect one end of a USB cable to the port at the top of the TI C32200SF board and the other end to a USB port on your computer.

Connect the four sensors to the following ports on the Grove Base Boosterpack:* Connect the galvanic skin response sensor to port J6.* Connect the 4-digit display to port J9.
* Connect the heart rate sensor to port J10.
* Connect the buzzer to port J11.  

For more information about the sensors and their interfaces, see [the Medical Device page in the Apiotics portal](https://portal.apiotics.com/workers/107).


## Branches

There are four branches in this repository.

* The `master` branch contains code for a rails application for the Medical Device.
* The `change_display` branch builds off the master branch and contains additional logic to display the data from the GSR sensor on the 4-digit display.
* The `live_update` branch also builds off the master branch but contains additional logic to automatically update the data from the GSR sensor on the web app. 
* The `live_change_display` branch contains the additional logic from the change_display branch AND the live_update branch, to both update the display AND automatically update the web app with data from the GSR sensor.

Note: For the `live_update` branch and the `live_change_display` branch, you will need to install a redis server in order to see updates on the web app without refreshing the page.


## Implementation

1. Decide which branch in the repository has the functionality you want, and clone it onto your local machine.

2. If you are using Linux, uncomment the following line in the Gemfile:
`# gem 'mini_racer', platforms: :ruby`.

3. Run `rake db:migrate`.

4. For the `change_display` or `live_change_display` branches, navigate to `app/models/medical_device/galvanic_skin_response_sensor.rb` and insert the name of your device on line 53 where it says `#insert device name here in quotes`.  The name of your device can be found at <https://portal.apiotics.com/workers/107> under the Worker Instances section.  If you are using the `master` or `live_update` branch, skip this step.

5. To start communication with the web app, run `rake dev_comms:start`.

6. If you are using the `live_update` or `live_change_display` branch, start a redis server by opening a new terminal and running `redis-server`.  Leave this terminal open in the background.  If you are using the `master` or `change_display` branch, skip this step.

7. To start your Rails server, run `rails server` (or `rails s`).

8. To see the web app, browse to <http://localhost:3000/medical_devices>.

Note: 
If you decide to modify any code in the rails app, you will need to run `dev_comms:restart` (or `dev_comms:stop` then `dev_comms:start`) in order to see the updated functionality on the web app.  


## More Info
[Medical Device page in Apiotics portal](https://portal.apiotics.com/workers/107)

