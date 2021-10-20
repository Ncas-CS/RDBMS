# SQL Basics

## Structured Query Language (SQL)

SQL is languange used for interacting with Relational Database Management Systems (RDBMS).
* Create, retrieve, update & delete data.
* Create & manage databases.
* Design & create database tables.
* Perform administration tasks (security, user management, import/export,etc)

SQL implementations vary between systems.
* Not all RDBMS follow the SQL standard.
* The concepts are the same but the implementation may vary.

SQL is actually a hybrid language, it's basically 4 types of languages in one.
* Data Query Language (DQL)
    - Used to query the database for information.
    - Get information that is already stored in the database.
* Data Definition Language (DDL)
    - Used for defining database schemas.
* Data Control Language (DCL)
    - Used for controlling access to the data in the database.
    - User & Permissions management.
* Data Manipulation Language (DML)
    - Used for inserting, updating and deleting data from the database.

## Queries

A query is a set of instructions given to the RDBMS (written in SQL) that tell the RDBMS what information you want it to retrieve.

    SELECT students.name, students.gpa
    FROM students
    WHERE students.age > 18

