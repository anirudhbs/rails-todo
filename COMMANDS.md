# Commands

* creating the project: `rails new rails-todo`
* running the server: `bin/rails server`
* make new controller: 
  ```
  bin/rails generate controller Welcome index
  # Welcome - controller name
  # index - action
  ```
* show routes: `bin/rails routes`
* new todo controller: `bin/rails generate controller todos`
* new todo model: `bin/rails generate model Todo title:string text:text`
* Create another model:
  ```
  bin/rails generate model Comment commenter:string body:text todo:references
  # sets up active record association with todo model
  ```
