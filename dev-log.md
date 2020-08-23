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


Remaining To Dos
Backend
- [ ] Build serializers for all Rails objects
- [ ] Add validations to all Rails models

Frontend
- [ ] Organize components into folders, add Containers

Exercises
- [ ] Add functionality to update and delete exercises
- [ ] Only display exercises from the current day

User Info
- [ ] Generate daily calorie goal for a user based on sign in information
- [ ] Subtract calories burned from exercise from daily calorie goal

Foods
- [ ] Add functionality to add, update, and delete food from a meal
- [ ] Add functionality to search for food in the database
- [ ] Add functionality to add food to the database
- [ ] In user’s diary, display servings consumed and calories consumed for each food

Diary
- [ ] Automatically add Diary for every day when user signs up - or just when user searches for a particular date / it’s today and no diary is created yet?

Meal
- [ ] Automatically add Meals for when a Diary is created - Breakfast, Lunch, Dinner, Snacks

Styling
- [ ] Add 3rd party CSS library (Bootstrap?)

Testing
- [ ] Add backend and frontend tests

Sunday, 8/23
- [ ] Before I go on vacation, recap what I've done and what I'm planning to do first 2 days when I get back - send to Anastasia by Sunday
