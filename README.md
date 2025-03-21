# Electricity Billing System

This project simulates an electricity billing system, designed to calculate and generate bills for users based on their electricity consumption. The system provides a user-friendly interface for entering customer data, calculates charges, and generates bills accordingly.

## Features

- **User Registration:** Allows customers to register by providing their personal details.
- **Bill Calculation:** Calculates the electricity bill based on the consumption.
- **Bill Generation:** Generates a detailed bill with customer and consumption information.
- **Payment History:** Keeps a record of past payments made by the customer.

## Technologies Used

- **Backend:** Java (Core Java)
- **Database:** MySQL (for storing customer and billing information)
- **Frontend:** HTML, CSS, JavaScript (if applicable for GUI)
- **IDE:** Eclipse (for Java development)
- **Libraries:** JDBC (Java Database Connectivity)

## Setup and Installation

### Set Up Database:
1. **Create a database in MySQL** named `ebs`.
2. **Import the database schema** provided in the `db` folder to create necessary tables.
   
## Configure Database Connection:
1. Open the project in Eclipse and configure the database connection in the DatabaseConfig.java file.
2.Ensure the username and password for the database are correctly set.

## Run the Application:
1.Once the database and connections are set up, run the application from Eclipse.
2.The system will prompt for inputs (customer details, usage) and display the bill based on the calculations.

