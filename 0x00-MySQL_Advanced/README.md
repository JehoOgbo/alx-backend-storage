# 0x00-MySQL_Advanced

### [0-uniq_users.sql](./0-uniq_users.sql)
Write a SQL script that creates a table users following these
requirements:

    - With these attributes:
        - id, integer, never null, auto increment and primary key
        - email, string (255 characters), never null and unique
        - name, string (255 characters)
    - If the table already exists, your script should not fail
    - Your script can be executed on any database

### [1-country_users.sql](./0-uniq_users.sql)
Write a SQL script that creates a table users following these
requirements:

    - With these attributes:
        - id, integer, never null, auto increment and primary key
        - email, string (255 characters), never null and unique
        - name, string (255 characters)
        - country, enumeration of countries: US, CO and TN, never null (= default will be the first element of the enumeration, here US)
    - If the table already exists, your script should not fail
    - Your script can be executed on any database
