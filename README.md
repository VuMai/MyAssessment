# TestOfGrabTaxi---CrowSourceHire
1. Create a new iPhone app, call it "MyAssessment". This will be tested on an iPhone simulator. Your app must run correctly using any iPhone simulator on press of 'Run' in XCode.

2. App will have 3 views; navigation bar is showing. All fonts are default size, font type, and black. All backgrounds are white unless othewise indicated. All button backgrounds are light gray. Do not show on the view the instructions, which are in parenthesis. Layout must be neat and all element are visible, but you can layout the elements in your own way.

3. In view #1, show 3 labels with corresponding buttons (instructions are in parenthesis):
(label 1) blue (button 1:) "go" (label 2) red (button 2:) "go" (label 3) green (button 3:) "go" and one label (main) underneath them all that says: "None"

4. When user clicks on a button, it goes to view #2 which shows the following:
button pressed is 2 (the view #2 background turns to the color of the label, in this case, red)

5. In view #2, underneath the label "button pressed is ...", you have...
(label 1) ONE (button 1:) "go" (label 2) TWO (button 2:) "go" (label 3) THREE (button 3:) "go" (button 4:) "go last"

6. When user clicks on buttons 1 to 3, for example 3, it goes to previous view (view #1) and changes label that says "None" to "button pressed is THREE"

7. When user clicks on 'back' button in view #2 navigation bar, it goes back to view #1 but in main label, it just says "None"

8. In view #2, if you click on button "go last", it'll go to view #3 which shows a tableView with the following values: In Rows #1 to #12, starting with the current date in this format "02 April 2015" up to 12 days, e.g., 03 April 2015, 04 April 2015, and so on until the 12th day, e.g., "12 April 2015". What you'll show will of course be the current date. So if the current date is 15 May 2015, you'll show... 
15 May 2015, 16 May 2015 and so on. If it goes to next month, then you'll show the date for that month.

9. You can go to previous views from view #3 by clicking on 'Back' button.
