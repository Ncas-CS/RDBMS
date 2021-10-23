# Database

## What is a Database?
A database is an organized collection of structured information, or data, typically stored electronically in a computer system. A database is usually controlled by a database management system (DBMS). The data can then be easily accessed, managed, modified, updated, controlled, and organized.

## Why Computer based DB?

* Can handle a large amount of information.
* High Security.
* Information is stored on a computer or on cloud.
* Easly accessible.
* Efficient.

## Relationship
* The database design requires you to create entity sets, each describing a set of related entities.
* The design also requires you to establish all the relationships between the entity sets within the database.
* The different database management software packages handle the creation and use of relationships in different manners.
* Depending on the type of interaction, the relationships are classified into three categories:
* One-to-one relationship
* One-to-many relationship
* Many-to-many relationship

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

## Relational database model
* The need for data is always present.
* The computer age, the need to represent data in an easy-to-understand, logical form has led to many different models, such as the relational model, the hierarchical model, the network model, and the object model.
* Because of its simplicity in design and ease in retrieval of data, the relational database model has been very popular, especially in the personal computer environment.
* E. F. Codd developed the relational database model in 1970. The model is based on mathematical set theory, and it uses a relation as the building block of the database.

## Integrity Rules
* In any database managed by an RDBMS, it is very important that the data in the underlying tables be consistent. If consistency is compromised the data are not usable.
* This need led the database field to formulate two integrity rules:
* Entity integrity
* Referential integrity

## Theoretical Relational Languages
* E.F.Codd suggested two theoretical relational languages to use with the relational model:
* Relational algebra:
* Relational algebra is a procedural language, because the user accomplishes desired results by using a set of operations in a sequence.The nine operations used by relational algebra are:
1.Union.
2.Intersection.
3.Difference.
4.Projection.
5.Selection.
6.Product.
7.Assignment.
8.Join.
9.Division.
* Relational calculus:
* Relational calculus is non procedural language.The programs specifies the data requirement and the system generates the operations needed to procedure a table with the required data.
* Result= (column list):Expression

## Database Design: Data Modeling and Normalization
### Data Modeling:
* Databases are complex, and data modeling is a tool to represent the various components and their relation-ships.The entity-relationship (E-R) model is a very popular modeling tool among many such tools available today. Many tools are available for data modeling with E-R.
* The E-R model uses E-R diagrams (ERD) for graphical representation of the database components.
* An entity (or an entity set) is represented by a rectangle.
* The name of the entity (set) is written within the rectangle.
* Some tools prefer to use uppercase letters only for entities. The name of an entity set is a singular noun. For example, EMPLOYEE, CUSTOMER, and DEPARTMENT are singular entity set names.
* A line represents relationship between the two entities.
* The name of the relationship is an active verb in lowercase letters.For example, works; manages, and employs are active verbs. Passive verbs can be used, but active verbs are preferable.
* The types of relationships (1:1, 1:M, and M:N) between entities are called connectivity or multiplicity.
* The relationship between two entities can be given using the lower and upper limits. This information is called the cardinality.
* Optional relationship : It is possible to have an entity that is not related to another entity at all times. The relationship becomes optional.
* Composite entity or Associative entity : The decomposition from M:N to 1:M involves third entity known as composite entity or an associative entity.
* Weak entities : In a database, these are entities that can exist by themselves such entities are known as weak entities.
* Some of the elements considered in the database design are:
* Simple attributes
* Composite attributes
* Single-valued attributes
* Multivalued attributes
### Dependency:
* A dependency is a constraint that applies to or defines the relationship between attributes.
* There are three types of dependencies in a table:
* Total or full dependency
* Partial dependency
* Transitive dependency
### Database Design:
* Database design is the organization of data according to a database model. 
### Normal forms:
* Normalization is a technique to re-duce redundancy. It is a decomposition process to split tables.
* Types : 
* First Normal Form (INF) : A table that is in INF may have redundant data.A table in 1NF does not show data consistency and integrity in the long run.
* Second Normal Form (2NF) : All INF requirements are fulfilled. There is no partial dependency.
* Third Normal Form (3NF) : All 2NF requirements are fulfilled. There is no transitive dependency.
### Dependency Diagrams:
* Dependency diagram is used to show total (Full, Partial and Transitive dependencies in a table).
* Conversion from 1NF to 2NF
* Conversion from 2NF to 3NF
### Denormalization:
* The normalization process splits tables into smaller tables.Denormalization is the reverse process.

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


## SQL Constraints
SQL constraints are used to specify rules for the data in a table.

Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.

Constraints can be column level or table level. Column level constraints apply to a column, and table level constraints apply to the whole table.

### The following constraints are commonly used in SQL:

* NOT NULL - Ensures that a column cannot have a NULL value
* UNIQUE - Ensures that all values in a column are different
* PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
* FOREIGN KEY - Prevents actions that would destroy links between tables
* CHECK - Ensures that the values in a column satisfies a specific condition
* DEFAULT - Sets a default value for a column if no value is specified
* CREATE INDEX - Used to create and retrieve data from the database very quickly

### Types of Functional dependencies in DBMS:
A functional dependency is a constraint that specifies the relationship between two sets of attributes where one set can accurately determine the value of other sets. It is denoted as X → Y, where X is a set of attributes that is capable of determining the value of Y. 

|R.No|Name|Dept Name|Dept Building|
|---|---|---|---|
|43|name1|CO|A4|
|44|name2|IT|A3|
|45|name3|CO|A4|
|46|name4|ME|B2|

From the above table we can conclude some valid functional dependencies:

* roll_no → { name, dept_name, dept_building },→  Here, roll_no can determine values of fields name, dept_name and dept_building, hence a valid Functional dependency
* roll_no → dept_name , Since, roll_no can determine whole set of {name, dept_name, dept_building}, it can determine its subset dept_name also.
* dept_name → dept_building ,  Dept_name can identify the dept_building accurately, since departments with different dept_name will also have a different dept_building
* More valid functional dependencies: roll_no → name, {roll_no, name} ⇢ {dept_name, dept_building}, etc.

Here are some invalid functional dependencies:

* name → dept_name   Students with the same name can have different dept_name, hence this is not a valid functional dependency.
* dept_building → dept_name    There can be multiple departments in the same building, For example, in the above table departments ME and EC are in the same building B2, hence dept_building → dept_name is an invalid functional dependency.
* More invalid functional dependencies: name → roll_no, {name, dept_name} → roll_no, dept_building → roll_no, etc.

### Types of Functional dependencies in DBMS:

### 1.Trivial functional dependency
In Trivial Functional Dependency, a dependent is always a subset of the determinant.
i.e. If X → Y and Y is the subset of X, then it is called trivial functional dependency.

### 2. Non-trivial Functional Dependency
In Non-trivial functional dependency, the dependent is strictly not a subset of the determinant.
i.e. If X → Y and Y is not a subset of X, then it is called Non-trivial functional dependency.

### 3. Multivalued Functional Dependency
In Multivalued functional dependency, entities of the dependent set are not dependent on each other.
i.e. If a → {b, c} and there exists no functional dependency between b and c, then it is called a multivalued functional dependency.

### 4. Transitive Functional Dependency
In transitive functional dependency, dependent is indirectly dependent on determinant.
i.e. If a → b & b → c, then according to axiom of transitivity, a → c. This is a transitive functional dependency  


