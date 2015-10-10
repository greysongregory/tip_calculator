# tip_calculator
# Pre-work - Tip Calculator

Tip Calculator is a tip calculator application for iOS.

Submitted by: Greyson Gregory

Time spent: 15 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [X] UI animations
* [X] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

* [X] Added slider to choose the number of ways to split the bill
* [X] Added dynamic text size so amounts never get squeezed off screen

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://imgur.com/UvKVPR2' title='Video Walkthrough for Tip Calculator' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Built it with an old tutorial. Rebuilt with new storyboard version. Had a hard time getting access to view controllers from AppDelegate.m, so wasn't sure how to get remembering amounts across app restarts to work as intended (seems default behavior already does this). Have some code which tries to clear after 10 minutes, but doesn't work :(

Getting the slider to not use fractional values was a bit tricky as I had to implement custom logic to round the numbers and use them appropriately.

## License

    Copyright [2015] [Greyson Gregory]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
