# Database

## What is a Database?
A database is an organized collection of structured information, or data, typically stored electronically in a computer system. A database is usually controlled by a database management system (DBMS). The data can then be easily accessed, managed, modified, updated, controlled, and organized.

## Why Computer based DB?

* Can handle a large amount of information.
* High Security.
* Information is stored on a computer or on cloud.
* Easly accessible.
* Efficient.

## Database Management Systems (DBMS)
A special software program that helps users create and maintain a database.
* Makes it easy to manage large amounts of information.
* Handles Security.
* Backups.
* Importing/Exporting data.
* Concurrency.
* Interact with software applications.

## Create Read Update Delete (C.R.U.D)

* Create  → Creating or adding new information to database.
* Read    → Retrive the existing information from the database.
* Update  → Rewrite the existing information on the datebase.
* Delete  → Distroying the existing information form the database.

## Database schema

The database schema is its structure described in a formal language supported by the database management system. The term "schema" refers to the organization of data as a blueprint of how the database is constructed.

## Two Types of Databases

|SQL|noSQL|
|---|---|
|Relational Database|Non-Relational Database|
|Organize data into one or more tables|Organize data into objects|
|Has columns and rows|Key-Values|
|Eg: Excel|Eg: JSON, XML, etc|
|Unique key identifies each row||
||Graphs|
||Flexible Tables|

## Relational Databases (SQL)

Relational Database Management Systems (RDBMS).
* Help users create and maintain a relational database.
* Eg: mySQL, Oracle, postgreSQL, etc,

Structured Query Language (SQL)
* Standardized language for interacting with RDBMS.
* Used to perform C.R.U.D operations, as well as other administrative task (user managment, security, backup, etc).
* Used to define tables and structures.
* SQL code used on one RDBMS is not always portable to another without modification.

## Non-Relational Databases (noSQL)

Non-Relational Database Management Systems (NRDBMS).
* Help users ti create and maintain a non-relational database.
* Eg: mongoDB, dynamoDB, apache, cassandra, firebase, etc

Implementation Specific.
* Any non-relational database falls under this category, so there's no set language standard.
* Most NRDBMS will implement their own language for performing CRUD and administrative operations on the database.

## Database Queries

Queries are requests made to the database management system for specific information.
As the database's structure become more and more complex, it becomes more difficult to get the specific pieces of information we want.
A google search is a query.

## Tables & Keys

### Surrogate key

A surrogate key in a database is a unique identifier for either an entity in the modeled world or an object in the database. The surrogate key is not derived from application data, unlike a natural key.

|Primary key (ID)|Column 1|Column 2|
|---|---|---|
|91|00|00|
|42|00|00|
|53|00|00|
|34|00|00|

### Natural key

A natural key is a type of unique key in a database formed of attributes that exist and are used in the external world outside the database. In the relational model of data, a natural key is a superkey and is therefore a functional determinant for all attributes in a relation.

|Primary key (ID)|Column 1|Column 2|
|---|---|---|
|example1@gmail.com|00|00|
|example2@gmail.com	|00|00|
|example3@gmail.com	|00|00|
|example4@gmail.com	|00|00|

### Foreign key

A foreign key is a set of attributes in a table that refers to the primary key of another table. The foreign key links these two tables

|Primary key (ID)|Column 1|Column 2|1st table ID|
|---|---|---|---|
|example1@gmail.com|00|00|91|
|example2@gmail.com	|00|00|42|
|example3@gmail.com	|00|00|53|
|example4@gmail.com	|00|00|34|

### Super key

The role of the super key is simply to identify the tuples of the specified table in the database. It is the superset where the candidate key is a part of the super key only. So, all those attributes in a table that is capable of identifying the other attributes of the table in a unique manner are all super keys.

|Primary key (ID)|Column 1|Column 2|Super key|
|---|---|---|---|
|91|00|00|42|
|42|00|00|53|
|53|00|00|91|
|34|00|00|34|

### Composite key

In database design, a composite key is a candidate key that consists of two or more attributes that together uniquely identify an entity occurrence. A compound key is a composite key for which each attribute that makes up the key is a foreign key in its own right.

|Key 1|Key 2|Column 2|Column 2|
|---|---|---|---|
|A|1|00|42|
|B|3|00|53|
|A|2|00|91|
|A|3|00|34|

