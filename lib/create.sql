CREATE TABLE projects (id INTEGER PRIMARY KEY, title TEXT, category TEXT, funding_goal TEXT, start_date CURRENT_TIME, end_date CURRENT_TIME);

CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER);

CREATE TABLE pledges (id INTEGER PRIMARY KEY, amount INTEGER, 
user_id INTEGER, project_id INTEGER, 
FOREIGN KEY(user_id) REFERENCES users(id), FOREIGN KEY(project_id) REFERENCES projects(id));

