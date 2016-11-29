# Part 4: SQL Queries

## Summary
In this part of the assessment you will demonstrate your ability to construct SQL queries by working with a provided SQL database, `challenge_submissions.db`. The database's schema is made up of three tables: `users`, `submissions`, and `challenges` (see Figure 1).

![Schema](readme-assets/schema.png)  
*Figure 1*.  Database schema visualization.


## Releases
### Release 0: `SELECT`
To get started, navigate in the console to the `part-4/` subdirectory and open the SQLite3 shell with the following command

```bash
$ sqlite3 challenge_submissions.db
```

For each of the requests below, write a single SQL query that will retrieve the requested data. Copy the working query and any output for each request to the file `part-4/queries.md`.

1. Get all the data for all the submissions.


### Release 1: `WHERE`
For each of the requests below, write a single SQL query that will retrieve the requested data. Copy the working query and any output for each request to the file `part-4/queries.md`.

1. Show all the data for any submissions made for the challenge with id 1.
2. Show the names and email addresses of any users with a "@gmail.com" email address.


### Release 2: `JOIN`
For each of the requests below, write a single SQL query that will retrieve the requested data. Copy the working query and any output for each request to the file `part-4/queries.md`.

1. Show all the data for submissions made by the user named "Jason Parker".
2. Show the names and email addresses of any users who made a submission for the challenge named "sinatra-vs-rails".
3. Show the names of any users who made a submission to any challenge whose name includes "rails".
4. Show the names of all the challenges for which the user named "Ray Locke" made a submission.


### Release 3: `INSERT`
For each of the requests below, write a SQL statement that will create the desired record. Then write a SQL query to verify that the record was inserted. For each request, copy the INSERT statement, query, and any output to the file `part-4/queries.md`.

1. Add a new user.
2. Add a new challenge.
3. Add a new submission that belongs to the user and challenge you just created.


### Release 4: `UPDATE`
For each of the requests below, write a SQL statement that will update a specified record. Then write a SQL query to verify that the record was updated. For each request, copy the SQL statement, query, and any output to the file `part-4/queries.md`.

1. Update the name of the user named "Jane Miller"; change it to "Jane X. Miller".


### Release 5: `DELETE`
For each of the requests below, write a SQL statement that will delete a specified record. Then write a SQL query to verify that the record was deleted. For each request, copy the SQL statement, query, and any output to the file `part-4/queries.md`.

1. Delete the challenge named "recursion-with-unicorns".
2. Delete the user with the email address "jackie@outlook.com".
3. Delete the submissions made by the user with id 6.


## Conclusion

You are done with Part 4. If you have not committed your changes, please do so before moving onto Part 5.
