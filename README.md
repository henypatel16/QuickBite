# QuickBite - Online Food Ordering System

**QuickBite** is a full-featured **Online Food Ordering System** built using **HTML, CSS, Bootstrap, JavaScript, PHP, and MySQL**.  
It provides a seamless experience for users to browse and order food online while giving administrators complete control over menu, orders, reports, and user management.

---

## Features

### Admin Side

The admin panel enables restaurant staff to manage and monitor all aspects of the system efficiently.

#### **Dashboard**
- View overall system statistics:
  - Total orders received
  - Orders cancelled
  - Orders delivered
  - Pending or prepared orders
- Quick summary of daily performance.

#### **Manage Users**
- Add, edit, and delete registered users.
- View complete customer details and manage their access.

#### **Food Category Management**
- Add new food categories.
- Update or delete existing categories as needed.

#### **Food Menu Management**
- Add new food items with images, descriptions, and prices.
- Edit or delete existing food menu items.
- Manage the visibility and availability of food items.

#### **Order Management**
- View all orders placed by users.
- Manage order status — *Confirmed*, *Prepared*, *Delivered*, or *Cancelled*.
- Track which user placed which order and its total amount.

#### **Reports & Analytics**
- Generate detailed reports on sales, orders, and food performance.
- Filter reports by date range, category, or user.
- Export or print reports for analysis.

#### **Search & Notifications**
- Real-time search functionality for users, orders, or food items.
- Notifications for new orders and status updates.

#### **Authentication**
- Secure login system for admin.
- Prevents unauthorized access to admin panel.

---

### User Side

The user side allows customers to explore the restaurant’s menu and place orders with ease.

#### **Home Page**
- Displays featured food items and categories.
- Easy navigation to menu and other sections.

#### **Food Menu**
- Browse through all available food items.
- Add selected dishes to the cart.

#### **My Cart**
- View items added to the cart.
- Update quantity or remove items before checkout.

#### **Track Order**
- Track order status in real time: *Placed*, *Confirmed*, *Prepared*, *Delivered*, or *Cancelled*.

#### **About Us**
- Learn about QuickBite’s story and mission.

#### **Contact Us**
- Submit queries or feedback directly through the website.

#### **User Authentication**
- User registration and login system.
- Allows personalized experience and order history tracking.

---

## Technologies Used

| Category | Technology |
|-----------|-------------|
| **Frontend** | HTML, CSS, Bootstrap, JavaScript |
| **Backend** | PHP |
| **Database** | MySQL |
| **Server** | XAMPP / WAMP |

---

## Installation Guide

Follow these steps to set up the QuickBite project locally:

1. **Clone the Repository**
   ```bash
   git clone https://github.com/henypatel16/QuickBite.git

2. **Move the Project Folder**
   
   Move the cloned folder into your XAMPP htdocs directory:
   C:\xampp\htdocs\QuickBite

3. **Import the Database**

   Open phpMyAdmin
   Create a new database quickbite_db
   Import the SQL file located inside the /SQL File folder

4. **Start the Local Server**

   Open XAMPP and start Apache and MySQL

5. **Run the Project Open your browser and go to:**

    http://localhost/QuickBite


6. Admin Login Use the admin credentials from the database or create a new one via SQL.


## **Future Enhancements**

- Integration of Online Payment Gateway
- Improved Mobile Responsiveness
- Email and SMS Notifications for orders
- Delivery Partner Module for tracking deliveries
- Advanced Analytics Dashboard for deeper insights
