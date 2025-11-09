# 0x01-NoSQL
Learn how to use NoSQL databases specifically Mongodb.

### [0-list_databases](./0-list_databases)
Contains a script that lists all databases in Mongodb.

### [1-use_or_create_database](./1-use_or_create_database)
contains a mongosh script that creates or uses the a database

### [2-insert](./2-insert)
Contains a mongosh script that inserts a document in the collection school

### [3-all](./3-all)
Lists all documents in the collection school

### [4-match](./4-match)
Lists all documents with a particular key-value pair

### [5-count](./5-count)
Displays the number of documents in a collection

### [6-update](./6-update)
Add a new attribute to a document in a collection

### [7-delete](./7-delete)
Deletes all documents with an attribute

### [8-all.py](./8-all.py)
Write a python function using pymongo that lists all documents
in a collection

### [9-insert_school.py](./9-insert_school.py)
Write a Python function that inserts a new document in a collection based on kwargs

### [10-update_topics.py](./10-update_topics.py)
Write a Python function that changes all topics of a school document based on the name

- Prototype: def update_topics(mongo_collection, name, topics):
- mongo_collection will be the pymongo collection object
- name (string) will be the school name to update
- topics (list of strings) will be the list of topics approached in the school

### [11-schools_by_topic.py](./11-schools_by_topic.py)
Write a Python function that returns the list of school having a specific topic:

- Prototype: def schools_by_topic(mongo_collection, topic):
- mongo_collection will be the pymongo collection object
- topic (string) will be topic searched

### [12-log_stats.py](./12-log_stats.py)
Write a Python script that provides some stats about Nginx logs
stored in MongoDB:

- Database: logs
- Collection: nginx
- Display (same as the example):
    ** first line: x logs where x is the number of documents in this collection
    ** second line: Methods:
    ** 5 lines with the number of documents with the method = ["GET", "POST", "PUT", "PATCH", "DELETE"] in this order (see example below - warning: it’s a tabulation before each line)
    ** one line with the number of documents with:
      - method=GET
      - path=/status
