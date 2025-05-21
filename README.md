# Title : Parcel Tracker

# Description

Parcel Tracking Management :

The Parcel Tracking Management System is designed to monitor and track the real-time location of shipments. The primary objective is to determine the current status and position of parcels on a near-continuous basis.

# General Information

1.Manages bookings, incoming shipments, outgoing returns, and undelivered parcels

2.Tracks pickup center locations and operations

3.Allows customers to monitor the exact location of each order

# Project flow

      HOME  --->  -SIGNUP         ---> -CUSTOMER REGISTER
      
      
                  -CUSTOMER LOGIN ---> -PROFILE
                                       -ORDER
                                       -TRACK YOUR COURIER
                                       -COURIER LIST
                                       -LOGOUT
                                       
                     
                  -ADMIN LOGIN    ---> -CUSTOMER ORDER DETAILS
                                       -COURIER STATUS UPDATE
                                       -COURIER STATUS LIST
                                       -LOGOUT
                                       
      
How to Use the Project
1.Login
Start by logging in to the Parcel Tracker platform using your registered email and password.

2.Customer Profile
Once logged in, the customer can view and manage their personal details in the Profile section.

3.Courier Registration
Customers can register a new courier for delivery.
A Reference Number is generated upon registration, which is used for tracking.

4.Admin Profile
Admins log in using their credentials.
They can view the list of registered couriers and update the status of each courier.

5.Courier Tracking
Customers can track the real-time status of their courier using the Reference Number provided during registration.
Status updates made by the admin are reflected instantly for the customer.

# Technical Features
1.Database Connectivity
  Integrated with Oracle Database for robust data storage and retrieval.
2.Relational Data Handling
  Implements One-to-Many relationships to model real-world courier operations effectively (e.g., one customer can have multiple courier bookings).
3.Frontend Form Validation
  Validations implemented at the HTML and UI level to ensure required fields and proper input formats are enforced before submission.
4.JavaScript-Level Validation
  Additional dynamic validations (e.g., checking email format, number ranges, etc.) handled using JavaScript for better user experience.
5.Oracle SQL Null Checks
  Database-side validations using SQL constraints to prevent null values and ensure data integrity.


# Technology

#Frontend
  
  1. JSP

  2. CSS

  3. HTML

  4. JavaScript
  
#Backend

  1. Java language
  
  2. Spring Boot framework
  
#Database

  1. Oracle SQL


