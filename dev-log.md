<h4>Project Schedule</h4>

Tuesday, 8/4

- [x] Establish a domain (an app idea)
    * Overview
      * Build a fitness tracker app that allows users to track their nutrition, exercise, and goals all in one place
      * Wishlist goals:
        * Macros
          * Display macros for the day on dashboard
          * Display macros by meal for current day on macros show page
          * Display info about macros on macros show page
          * Give user opportunity to customize macro goals
        * Nutrients
          * Display nutrients for the day on dashboard
          * Display nutrients by meal for current day on nutrients show page
          * Display info about nutrients on nutrients show page
          * Provide food recommendations based on current consumption

- [x] Establish user stories
    * User should be able to:
      * Sign up and log in
      * Get daily calorie goal by inputting info
      * Navigate to personal dashboard to see if they’re on track for the day/week
      * Foods
        * Look up foods already in the database - search feature
        * Add foods to the database
          * Once foods are added to the database they can’t be edited/deleted since other users may be have logged them
        * Add foods to meals
      * Meals
        * Log meals and track against calorie goal
          * Add meals
          * Edit meals
          * Delete meals
      * Exercises
        * Log exercise and see how that impacts calorie goal for the day
          * Add exercise
          * Edit exercise as needed
          * Delete exercise as needed
      * Wishlist goals:
        * Recipes
          * Add recipes
          * Edit recipes
          * Delete recipes
          * Add recipes to meals

- [x] Establish models & relationships
- [x] Build out Rails API backend (at least a first round)

Wednesday, 8/5
- [x] Add seed data and double-check models in rails console

Thursday, 8/6
- [x] Add serializers -- fast JSON api

Friday, 8/7
- [x] Mock user login -- add current_user to application controller
- [x] Use ‘create-react-app’ to begin scaffolding the frontend
- [x] Add Redux and establish Redux store

Monday, 8/10
- [x] Add user authentication
  - [x] Log in
  - [x] When application loads, grab current user

Tuesday, 8/11
- [x] Add user authentication
  - [x] Log out
    - *Need to move this component around*


Wednesday, 8/12

Thursday 8/13
- [x] Control what user info shows in state (don't want password_digest, etc.)
- [x] Build Exercise Serializer and Exercises components to display data to user
Friday, 8/14
- [x] Add sign up functionality
- [x] Add react router

Saturday, 8/15

Sunday, 8/16
- [x] Add a couple components

Monday, 8/17
- [x] Add New Exercise form on frontend and add that exercise to the api, once submitted

Tuesday, 8/18
- [x] Change Login and Sign Up components to React container components?

Wednesday, 8/19
- [x] Start wire framing application layout on the frontend -- think about components
- [x] Render Meal Diary on dashboard

Thursday, 8/20
- [x] Render Meals for each Diary on frontend

Friday, 8/21
- [x] Render Foods for each Meal on frontend

Sunday, 8/30
- [x] Add functionality to delete exercises

Wednesday, 9/9
- [x] Add functionality to update exercises
  - *Took longer than anticipated:*
    - *Moved logic from App.js into ExerciseContainer.js*
    - *Had to reconfigure routes and organization*

Thursday, 9/10
- [x] Organize components into folders, add Containers

Friday, 9/11
Diary
- [x] Add functionality for user to create diary every day

Meal
- [x] Automatically add Meals for when a Diary is created - Breakfast, Lunch, Dinner, Snacks

Monday, 9/14
Foods
- [x] Add functionality to add food to a meal
  - *Had to update how information was pulled from database - change from just using foods to using foods AND mealFoods so I can differentiate between adding foods to a meal and adding foods to the database*

Tuesday, 9/15
- [x] Add field for user to enter number of servings consumed for a mealFood, automatically determine calories based on this information
- [x] Update meal calories based on total calories for all mealFoods

Wednesday, 9/16
- [x] Started to add functionality to update a meal
- I THINK FRONTEND IS WORKING. SEE WHAT ERROR IS WHEN TRYING TO SUBMIT UPDATE. CHECK IN RAILS CONSOLE THAT UPDATE IS GOING THROUGH.

Thursday, 9/17
- [x] Continue working on functionality to update and delete foods from a meal
- [x] In user’s diary, display servings consumed and calories consumed for each food

Friday, 9/18
- [x] Complete functionality to update and delete foods from a meal
- [x] Update meal calorie count when a meal_food is added, updated, or deleted
  - *Still having some issues where meal calorie count is not updated appropriately, but it works for the part...*

Saturday, 9/19
- [x] Add validations for number of servings on meal_foods model

Sunday, 9/20
- [X] Add NavBar

Monday, 9/21
- [x] Add link to Login from Sign Up page
- [x] Add link to Sign Up from Login page

Tuesday, 9/22
- [x] Add functionality to add food to the database
  - [x] If user comes from /foods, take them back to /foods
  - [x] If user comes from /meals/:meal_id/foods, take them back to /meals/:meal_id/foods

Wednesday, 9/23
- [x] Add functionality to search for food in the database from both /foods and /meals/:meal_id/foods

Thursday, 9/24
- [x] Add field to search for diary by date
  - *Install react-datepicker*
- [x] User can't have more than one diary for a day
- [x] When user selects a date where a diary doesn't exist, create diary for that day

Friday, 9/25
- [x] Debug issue with Diary creation

Monday, 9/28
- [x] Update to “Create Diary” button if user selects a date where a diary doesn’t exist
    * Automatic creation is causing errors

Tuesday, 9/29
- [x] When user adds mealFood to a diary other than today, take them back to that diary after adding
  - [x] Account for ALL timezones (GMT-XXXX and GMT+XXXX)

Wednesday, 9/30
- [x] Only display exercises from the current day
- [x] Add field to search for exercises by date
- [x] When user adds/updates exercise for a date other than today, take them to the exercise date

Thursday, 10/1
- [x] When user refreshes /meals/:mealId/foods, re-render same page (currently rendering /foods even though URL doesn’t change)
- [x] Fix bug when adding mealFoods to diary
    * Since diary date was added, user was no longer able to go from diary > add food to meal > add food to database > add food to meal > diary
    * Bug has been fixed and user can now add foods to meals after adding food to database

Friday, 10/2
Dashboard
- [x] Display user information
- [x] Display overview of exercise information for current day

Saturday, 10/3
- [x] Add daily calories burned to meal diary and exercise pages

Sunday, 10/4
- [x] Reorganize top level files
    - [x] App renders MainContainer.js
    - [x] MainContainer.js holds all routes
    - [x] Dashboard renders user dashboard

Monday, 10/5
- [x] Add daily calories burned to dashboard (pull from state.exercises instead of currentUser.attributes.exercises so information is automatically updated)
- [x] Display diary overview for current day

Tuesday, 10/6
- [x] Add daily calories consumed and daily calories remaining to meal diary and dashboard
- [x] In /diaries and /exercises, ensure that if user changes day the correct calorie count shows up for remaining, consumed, and burned
- [x] Add note to foods/new letting user know what information is required vs. what information is recommended

Wednesday, 10/7
- [x] Generate daily calorie goal for a user based on sign in information
- [x] Subtract calories burned from exercise from daily calorie goal

Thursday, 10/8
- [x] Calculate macros based on food consumed during the day and display info

Friday, 10/9
- [x] Calculate nutrients based on food consumed during the day and display info

Saturday, 10/10
- [x] Remove any unnecessary associations
    * i.e. if I don’t ever access currentUser.exercises should the relationship exist in the Redux store?
- [x] Clear everything from the store except foods upon logout
- [x] Make sure I’m not getting more information from the database that what is needed at the time - console.log whatever I can to make sure I’m never getting more info than I need

Sunday, 10/11
Backend
- [x] Build serializers for all Rails models
- [x] Add validations to all Rails models
    - [x] Any fields that are supposed to be integers can ONLY be integers

Monday, 10/12
Styling
- [x] Add 3rd party CSS library (Bootstrap?)

Login / Sign Up
- [x] Password field should be hidden

Tuesday, 10/13
- [x] Begin styling

Wednesday, 10/14
- [x] Style User dashboard

Thursday, 10/15
- [x] Style Meal Diary

Friday, 10/16
- [x] Style Exercises index page

Saturday, 10/17
- [x] Style Foods index page and Food Card

Sunday, 10/18
- [x] Continue Styling

Monday, 10/19
- [x] Add pie chart for daily macros on dashboard using Chart.js

Tuesday, 10/20
- [x] Style MealFood Update form
- [x] Style Exercise Update form
- [x] Style Add Food form

Wednesday, 10/21
- [x] Add meal macros to dashboard and style

Sunday, 10/25
- [x] Add nutrient goals to users database
- [x] Display nutrient goal progress on user dashboard

Monday, 10/26
- [x] Add icons
- [x] Add date picker to dashboard and utilize selected date throughout app

Tuesday, 10/27
- [x] Add error styling to sign up and login forms

Wednesday, 10/28
- [x] Add error styling to remaining forms

Thursday, 10/29
- [x] Add placeholder examples in forms (i.e. new food serving size: 1 cup)

Friday, 10/30
- [x] Finish styling

Saturday, 10/31
- [x] Review warnings in console
- [x] Start blog

Sunday, 11/1
- [x] Post blog
- [x] ReadMes
- [x] Codes of Conduct
- [x] Remove unnecessary comments
- [x] Video demo
- [x] Submit project & schedule assessment

Monday, 11/2
- [ ] Refactor
    - [ ] MainContainer holds any functions that other containers need access to
- [ ] Sort foods alphabetically
- [ ] Should daily calorie and nutrient goals be determined on backend, or does that not matter?
- [ ] Review any questions in code
- [ ] Add break in frontend ReadMe after demo video
- [ ] Add screenshots to ReadMes


QUESTIONS
- [ ] Is there a way to redirect to “/“ for all routes except “/login” and “/signup” if not logged in?
- [ ] Is there a way to redirect to a route that exists if user types a route that doesn't exist?
    * i.e. If user types in "/exercises/abcd" can I redirect to "/exercises"
- [ ] Do I still need to pass diaryDate in location state or is date working since it's in MainContainer?
- [ ] When user adds new food should I round nutrients to nearest integer or 1 decimal place?


THINGS I NEED TO UNDERSTAND
- [ ] Spread operator - what is happening when I pass {…props} to a component?
- [ ] How is reduce working? Used in MealCard.js - is this still being used?
- [ ] event.persist() - do I need this?


ISSUES
- [x] Can’t type urls into url bar, paths only work when buttons/links are clicked on. Otherwise, "/" is re-rendered when any path is typed in.
    - *Fixed by rendering Home instead of Redirecting to "/" in App.js for paths in question (/exercises, /diaries)*
- [x] Get an error if I type /exercises/:id/edit into url bar: Cannot read property 'attributes' of undefined. Works by clicking on Update link for the exercise.
- [x] Redux store:
    * Exercises under attributes are only updated on page refresh.
    * Exercises array on its own is updated with “Add Exercise” button click
    * Exercises array is not cleared out when user logs out, is updated when new user logs in
- [x] Logout should redirect to “/“
- [x] If I’m in “/meals/meal_id/foods” and I refresh, the URL stays the same but it refreshes as “/foods”
- [x] Do I need to get info from the database in each individual container to ensure it is fetched if page refreshes? Currently having issues where foods are not always in state and need to go back to MainContainer to fetch them.
    * Added conditional in Foods to ensure foods display properly
- [x] Add Food and MealFood Update form doesn't allow you to press "enter" with decimal, however user can click "Update"
- [x] Search feature doesn't work if a space is added
- [ ] Get this console.error on login and sign up, but not getCurrent/User: [Deprecation] Synchronous XMLHttpRequest on the main thread is deprecated because of its detrimental effects to the end user's experience. For more help, check https://xhr.spec.whatwg.org/.


* Globetrotter part 7 - 1:06 into it (starting with /trips/new route) - left off
* Globetrotter part 11 - 30 min in starts talking about dynamic routes on frontend; starts talking about updating record, goes into part 12


<h5>Remaining To Dos</h5>

Wishlist

User Info
- [ ] Include option for units to be metric
- [ ] Calculate daily calorie goal based on desired weight loss
- [ ] Give user option to set goals (i.e. weight, exercise, etc.)
- [ ] Give user ability to change info (i.e. weight, activity level, etc.)
- [ ] Add email address for user to send email updates
- [ ] Add password requirements
- [ ] Add password confirmation on sign up

Forms
- [ ] Is it possible to display backend errors on frontend with styling?
    * Currently handling backend and frontend errors separately

Dashboard
- [ ] Provide 7-day summary every Sunday
    * Average calories per day
    * Total exercise for the week, broken down by category
    * # of days macro goals were achieved

Date
- [ ] When page is refreshed, date that was previously displayed is still displayed (currently resets to today’s date)

Foods
- [ ] Recommend foods to eat based on current daily consumption
- [x] Add user_id to food so user can choose to see only foods they've created
- [ ] Give user 2 options to view foods: My Foods and All Foods
- [ ] Add recipes feature
- [x] Display %DV for all nutrients in food card, specific to user's DV

Testing
- [ ] Add backend and frontend tests

Accessibility
- [ ] Add accessibility features

Design
- [ ] Add icons throughout
