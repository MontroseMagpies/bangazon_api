<!-- Table as lowercase first letter and singular ex: "Computer" . Camel case rails creates underscores for you. -->
<!-- Fields  are name_name:type -->
___________________
<!-- Computer table: -->
___________________

<!-- $ rails g scaffold computer purchase_date:date decommission_date:date -->

$ rails db:migrate

<!-- Postman testing:  -->

___________________
<!-- Department Table: -->
___________________

<!-- $ rails g scaffold department department_name:string expense_budget:float -->

$ rails db:migrate

___________________
<!-- Employee Table: -->
___________________

<!-- $ rails g scaffold employee name_first:string name_last:string job_title:string employee_hire_date:date department:references  -->

$ rails db:migrate

___________________
<!-- training program -->
___________________

$ rails g scaffold training_program start_date:date subject:string end_date:date max_occupancy:integer 

$ rails db:migrate
___________________
___________________

$ rails g scaffold employee_training_program training_program:references employee:references

$ rails db:migrate
___________________
___________________

$ rails g scaffold employee_computer computer:references employee:references 

$ rails db:migrate
