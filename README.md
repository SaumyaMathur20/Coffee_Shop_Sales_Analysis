# ☕ Coffee Shop Sales Analysis
### End-to-End Data Analytics Project (SQL + Python + Power BI)

---

## 📌 Project Overview

This project analyzes **coffee shop sales data** using an end-to-end analytics workflow involving **SQL, Python, and Power BI**.  
The objective of the project is to clean raw data, integrate multiple datasets, perform exploratory data analysis, and build an interactive dashboard for business insights.

---

# Dashboard Preview

<img width="889" height="502" alt="image" src="https://github.com/user-attachments/assets/0d396474-3a38-4c7c-9eb8-2ecec9c03db7" />

<img width="889" height="501" alt="image" src="https://github.com/user-attachments/assets/b9a19046-b1e6-442f-b94a-b4830b940fb9" />

---

The project demonstrates a practical **data analytics pipeline used in industry**, where:

- **SQL** is used for data cleaning and data integration  
- **Python** is used for exploratory data analysis  
- **Power BI** is used for dashboard creation and visualization  

---

## 🗂️ Dataset Description

The analysis is based on four datasets.

| Dataset | Description |
|-------|-------------|
| City | Contains city information |
| Customers | Stores customer details |
| Products | Product catalog |
| Sales | Transaction-level sales data |

---

## ⚙️ Project Workflow

The project follows a **three-stage analytics workflow**:

---

# 🧹 Step 1: Data Cleaning & Integration (SQL)

Data preparation was performed using **MySQL**.

### ✔ Data Quality Checks

The following checks were performed on each dataset:

- Checked for **duplicate records**
- Checked for **NULL values**
- Ensured data consistency across tables

### ✔ Data Type Conversion

The `sale_date` column was originally stored as **text**.  
It was converted to **DATE format** using SQL.

Steps performed:

- Disabled safe updates
- Used `STR_TO_DATE()` to convert string values into date format
- Used `ALTER TABLE` to change the column datatype

### ✔ Data Integration

A SQL **view** named: coffee_analysis

was created by joining the following tables:

- city
- customers
- products
- sales

This view created a **single consolidated dataset** used for further analysis.

---

# 📊 Step 2: Exploratory Data Analysis (Python)

Exploratory analysis was conducted in **Jupyter Notebook using Python**.

### 📚 Libraries Used

- Pandas
- Matplotlib
- SQLAlchemy
- seaborn

### 🔗 Data Import

The SQL view **coffee_analysis** was imported into Python using **SQLAlchemy's `create_engine()`** to establish a connection between **MySQL and Python**.

### 🔧 Feature Engineering

Additional time-based features were created:

- **Year column**
- **Month Name column**

These columns helped in performing time-based analysis.

### 📈 Exploratory Visualizations

The following analyses were performed:

#### 📅 Monthly Revenue Analysis
- Bar chart showing **total revenue by month**

#### 🌆 City-wise Revenue
- Bar chart comparing **revenue across different cities**

#### 🥧 Transaction Distribution
- Pie chart showing **percentage of transactions per city**

These visualizations helped identify **high-performing cities and sales patterns across months**.

---

# 📊 Step 3: Dashboard Development (Power BI)

The cleaned dataset (`coffee_analysis` view) was imported into **Power BI** to build an interactive dashboard.

### 🔄 Data Transformation

Using **Power Query Editor**:

- Verified column datatypes
- Cleaned minor inconsistencies
- Prepared fields for visualization

### 📊 Dashboard Visuals

The Power BI dashboard includes:

- 📈 **Monthly Revenue Trends**
- 🌍 **City-wise Sales Comparison**
- 🥧 **Transaction Distribution by City**

These visuals enable quick exploration of **revenue patterns and geographic performance**.

---

# 🔍 Key Insights

## 📊 Key Analytical Insights

### 🌆 City-wise Sales Performance
- **Pune recorded the highest revenue (₹1.26M)** and contributed **20.55% of total transactions**, making it the strongest performing market.
- **Chennai (₹0.94M)** and **Bangalore (₹0.86M)** followed as the next highest revenue-generating cities.
- **Jaipur (₹0.80M)** and **Delhi (₹0.75M)** also showed strong market performance with double-digit transaction shares.
- Smaller markets such as **Lucknow (₹0.11M)** and **Hyderabad (₹0.13M)** contributed comparatively lower revenue.

### 🥇 Top Product Categories
- **Cold Brew Coffee Pack** generated the **highest revenue at ₹1.19M**, making it the most popular product.
- **Coffee Beans (500g pack)** recorded **₹0.73M in sales**, indicating strong demand for traditional coffee products.
- **Coffee Gift Hamper (₹0.49M)** and **Ground Espresso Coffee (₹0.44M)** also performed strongly.
- Several accessory and lifestyle products such as **coffee mugs, tumblers, and notebooks** contributed smaller but consistent sales.

### 📅 Monthly Sales Trends
- **March recorded the highest monthly revenue (₹724K)**, indicating a seasonal peak in sales.
- **November (₹709K)** and **October (₹687K)** were also high-performing months.
- The **lowest sales were recorded during mid-year months such as June (₹298K) and August (₹295K)**.
- Overall, the sales trend suggests **strong demand during early spring and pre-winter months**.

### 🧾 Transaction Distribution
- **Pune accounted for over one-fifth of all transactions (20.55%)**, significantly higher than other cities.
- **Chennai (15.41%)**, **Bangalore (14.09%)**, **Jaipur (13.26%)**, and **Delhi (12.56%)** together contributed the majority of transactions.
- The **top five cities collectively generated more than 75% of total transactions**, highlighting strong geographic concentration of sales.

### ⭐ Customer Feedback
- The **average customer rating across products is 3.99**, indicating generally positive customer satisfaction.

### 🏙️ Market Coverage
- The business operates across **14 cities**, serving **2M customers** with **28 products**.
- Total recorded **revenue reached approximately ₹6M**, with over **54K transactions**.

### 📊 Market Economics Insights
- Cities with **higher estimated rents such as Bangalore and Pune also show higher revenue**, suggesting strong purchasing power in metropolitan markets.
- Sales distribution compared with population size indicates that **high population alone does not guarantee higher revenue**, highlighting the importance of market demand and purchasing behavior.

---

# 🛠️ Tools & Technologies

| Category | Tools Used |
|--------|------------|
| Database | MySQL |
| Programming | Python |
| Data Analysis | Pandas |
| Visualization | Matplotlib |
| Dashboard | Power BI |


---

# 💡 Skills Demonstrated

- SQL Data Cleaning
- SQL Joins and View Creation
- Python Exploratory Data Analysis
- Data Visualization
- Dashboard Development
- End-to-End Data Analytics Workflow

---

⭐Author- Saumya Mathur
