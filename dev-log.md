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
- [ ] When user adds mealFood to a diary other than today, take them back to that diary after adding
- [ ] When user refreshes /meals/:mealId/foods, re-render same page (currently rendering /foods even though URL doesn’t change)    

<h5>Remaining To Dos</h5>
<i>Required</i>

Backend
- [ ] Build serializers for all Rails objects
- [ ] Add validations to all Rails models
  - [ ] Any fields that are supposed to be integers can ONLY be integers

Frontend
- [ ] Clear everything from the store except foods upon logout
- [ ] Make sure I’m not getting more information from the database that what is needed at the time - console.log whatever I can to make sure I’m never getting more info than I need
    * Examples:
        * console.log from actions/mealFoods.js:62
        * console.log from actions/diaries.js:43
        * console.log from actions/meals.js:43
        * Getting meals array in Foods container - gets ALL meals for a user, seems like a lot

Dashboard
- [ ] Display user information
- [ ] Display overview of exercise information for current day
- [ ] Display diary for current day

Exercises
- [ ] Only display exercises from the current day
- [ ] Add field to search for exercises by date

Routes
- [ ] Split routes into modules

Login / Sign Up
- [ ] Password field should be hidden

Styling
- [ ] Add 3rd party CSS library (Bootstrap?)


<i>Wishlist</i>

User Info
- [ ] Generate daily calorie goal for a user based on sign in information
- [ ] Subtract calories burned from exercise from daily calorie goal
- [ ] Calculate macros based on food consumed during the day and display graphic
- [ ] Calculate nutrients based on food consumed during the day and display graphics

Dashboard
- [ ] Display macro information for current day
- [ ] Display nutrient information for current day

Foods
- [ ] Recommend foods to eat based on current daily consumption

Testing
- [ ] Add backend and frontend tests



<b>ISSUES</b>
- [x] Can’t type urls into url bar, paths only work when buttons/links are clicked on. Otherwise, "/" is re-rendered when any path is typed in.
  - *Fixed by rendering Home instead of Redirecting to "/" in App.js for paths in question (/exercises, /diaries)*
- [ ] Get an error if I type /exercises/:id/edit into url bar: Cannot read property 'attributes' of undefined. Works by clicking on Update link for the exercise.
- [ ] Redux store:
    * Exercises under attributes are only updated on page refresh.
    * Exercises array on its own is updated with “Add Exercise” button click
    * Exercises array is not cleared out when user logs out, is updated when new user logs in
