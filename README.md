# PERFORMANCE TEST MODULE 4 - DATABASE

# GUIDE TO CLONE THE REPOSITORY

  Copy this URL: https://github.com/JoseRivera-07/db_megastore_exam_M4.git

  Then, open Visual Studio Code and look for the "View" option in the navigation bar. 
  Click here and search for "Command Palette." 
  Click again and check the search field. 
  Look for the "Git: Clone" option and paste the URL.

  Or you can do this another option.

  To do it via command line, you can do the following:
  Copy the repository URL, open Visual Studio Code, and press Ctrl+Shift+P.
  Then, find the "Git: Clone" option, click on it, and press Ctrl+V.

# Explanation to ER
## First Normal Form (1NF): Data Atomicity.

No lists were found within the same cell in the .xlsx file; therefore, the first normal form is omitted. (It is possible to apply it if the user is registered in a city and then their address is specified, but I couldn't find a way to relate the city to the address.)

## Second Normal Form (2NF): Eliminating Partial Dependencies.
It was evident in the .xlsx file that the records were partially dependent on the "transaction_id" attribute, an attribute that originally belongs to the sale and is relevant to it. Therefore, I decided to create an external table to store the sale information, as well as the information for the other main entities, such as the customer, product, and supplier.

Then, the need arose to relate a product to its category and the supplier that provides it. Additionally, the product within the sale is represented in the sale_items table.

## Third Normal Form (3NF): Eliminating Partial Dependencies.
I applied this normal form in conjunction with the second, since the product table had two partial dependencies:

the category and the supplier.

These two dependencies led to the creation of two tables: a section table and a pivot table.

The section table was used for the category.

The pivot table was used between the supplier and product tables, since it represented a many-to-many relationship, meaning the supplier relationship couldn't exist within the product table.