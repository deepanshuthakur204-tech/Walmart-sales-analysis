# 🛒 Walmart Sales Data Analysis | End-to-End Python + SQL Project

## 📌 Project Overview

This project is an end-to-end data analytics solution built using **Python** and **MySQL** to analyze Walmart sales data. The objective is to demonstrate the complete data analytics workflow, starting from extracting raw data, cleaning and transforming it using Python, loading it into a MySQL database, and finally performing SQL analysis to generate meaningful business insights.

The project follows a real-world **ETL (Extract, Transform, Load)** pipeline and showcases how Python and SQL work together to solve business problems in the retail industry. It highlights practical skills in data cleaning, database management, SQL querying, and business analytics.

---

# 🎯 Project Objectives

The primary objectives of this project are:

* Download the Walmart sales dataset using the Kaggle API.
* Clean and preprocess the raw dataset using Python.
* Transform the data into an analysis-ready format.
* Load the cleaned dataset into a MySQL database.
* Perform advanced SQL analysis to answer real-world business questions.
* Generate actionable business insights for decision-making.

---

# 🔄 Project Workflow
Project_workflow.png

The project follows a complete data analytics pipeline consisting of six major stages.

### 1. Data Extraction

The Walmart sales dataset was downloaded directly from Kaggle using the **Kaggle API**. This automated the data acquisition process and ensured easy access to the latest version of the dataset.

**Tool Used:**

* Kaggle API

---

### 2. Data Loading in Python

The downloaded CSV dataset was imported into Python for further preprocessing.

**Libraries Used:**

* Pandas
* NumPy

Python was used to inspect the dataset, understand its structure, identify missing values, and prepare it for cleaning.

---

### 3. Data Cleaning & Preprocessing

The raw dataset contained inconsistencies that needed to be addressed before analysis. Python and Pandas were used to clean and prepare the data.

The following preprocessing steps were performed:

* Removed duplicate records
* Checked and handled missing values
* Corrected inconsistent data
* Converted columns to appropriate data types
* Formatted date and time columns
* Standardized text values
* Validated data quality
* Prepared the dataset for SQL analysis

**Libraries Used:**

* Pandas
* NumPy

---

### 4. Data Transformation

Once the dataset was cleaned, additional transformations were applied to improve usability for SQL analysis.

These transformations included:

* Formatting dates
* Standardizing categorical values
* Creating calculated fields
* Preparing numerical columns
* Ensuring database compatibility

---

### 5. Loading Data into MySQL

After preprocessing, Python was connected to MySQL using SQLAlchemy and PyMySQL. The cleaned dataset was then loaded into a MySQL database, enabling efficient querying and analysis.

**Libraries Used:**

* SQLAlchemy
* PyMySQL

**Database:**

* MySQL

---

### 6. SQL Data Analysis

Once the data was stored in MySQL, SQL was used to analyze the dataset and answer multiple business questions. The project demonstrates the use of both basic and advanced SQL concepts to generate valuable insights.

---

# 🛠️ Technologies Used

### Programming Languages

* Python
* SQL

### Database

* MySQL

### Python Libraries

* Pandas
* NumPy
* SQLAlchemy
* PyMySQL
* Kaggle API
* IPython / Jupyter Notebook

### Development Tools

* Visual Studio Code
* MySQL Workbench
* Git
* GitHub

---

# 📂 Project Structure

```
Walmart-Sales-Analysis/
│
├── data/
│   ├── walmart.csv
│   └── cleaned_walmart.csv
│
├── notebooks/
│   └── walmart_analysis.ipynb
│
├── sql/
│   ├── schema.sql
│   ├── business_queries.sql
│   └── analysis.sql
│
├── images/
│   └── project_pipeline.png
│
├── README.md
│
└── requirements.txt
```

---

# 🐍 Python Skills Demonstrated

Throughout the project, Python was used to build the complete ETL pipeline.

Key Python tasks include:

* Downloading data using the Kaggle API
* Reading CSV files
* Data cleaning
* Data preprocessing
* Data transformation
* Missing value handling
* Duplicate removal
* Data type conversion
* Connecting Python with MySQL
* Loading cleaned data into the database

---

# 🗄️ SQL Skills Demonstrated

The project uses various SQL concepts to solve business problems.

### Basic SQL

* SELECT
* WHERE
* ORDER BY
* DISTINCT
* LIMIT

### Aggregation

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

### Grouping

* GROUP BY
* HAVING

### Conditional Statements

* CASE WHEN

### Date Functions

* STR_TO_DATE()
* DAYNAME()
* MONTH()
* YEAR()
* HOUR()

### Window Functions

* RANK()
* DENSE_RANK()
* ROW_NUMBER()

### Common Table Expressions (CTE)

* WITH Clause

### Additional Concepts

* Subqueries
* Mathematical Functions
* String Functions
* Aliases

---

# 📊 Business Problems Solved

The project answers the following real-world business questions:

1. Calculate the total revenue generated.
2. Identify the highest and lowest revenue-generating product categories.
3. Determine which city and branch contribute the most and least to total sales.
4. Calculate the average transaction value.
5. Analyze month-over-month and day-over-day sales trends.
6. Analyze payment methods and transaction counts.
7. Identify the highest-rated product category in each branch.
8. Determine the busiest day for each branch.
9. Calculate the total quantity sold by each payment method.
10. Find the average, minimum, and maximum ratings for each category in every city.
11. Calculate total profit for each category.
12. Identify the preferred payment method in each branch.
13. Categorize sales into Morning, Afternoon, and Evening shifts.
14. Compare branch revenue between 2022 and 2023 to identify the largest decline.

---

# 📈 Key Business Insights

This analysis helps answer important business questions such as:

* Which product categories generate the highest revenue?
* Which branches perform the best?
* What are customers' preferred payment methods?
* Which time of day records the highest sales?
* Which categories generate the most profit?
* Which branches show declining performance?
* How do customer ratings vary across branches and categories?

---

# 💼 Skills Gained

By completing this project, the following technical skills were demonstrated:

### Python

* Data Cleaning
* Data Wrangling
* Data Transformation
* ETL Pipeline Development
* Database Connectivity
* Data Validation

### SQL

* Data Aggregation
* Business Analytics
* Window Functions
* CTEs
* Ranking Functions
* Date Functions
* Query Optimization

### Data Analytics

* Retail Sales Analysis
* Revenue Analysis
* Profit Analysis
* Customer Behavior Analysis
* Business Intelligence
* KPI Reporting

---

# 🚀 How to Run the Project

1. Clone the repository from GitHub.
2. Install the required Python libraries using `requirements.txt`.
3. Configure the Kaggle API credentials.
4. Download the Walmart dataset.
5. Run the Python notebook or script to clean and preprocess the data.
6. Load the cleaned dataset into MySQL.
7. Execute the SQL queries to generate business insights.

---

# 🔮 Future Improvements

Potential enhancements for this project include:

* Building an interactive Power BI dashboard.
* Creating Tableau visualizations.
* Developing a Streamlit web application.
* Automating the ETL pipeline.
* Adding sales forecasting using Machine Learning models.
* Deploying the project to the cloud.

---

# 👨‍💻 Author

**Dipanshu Thakur**

* **GitHub:** [https://github.com/deepanshuthakur204-tech](https://github.com/deepanshuthakur204-tech)
* **LinkedIn:** *(Add your LinkedIn profile)*
* **Email:** *(Add your email address)*

---

## ⭐ Support

If you found this project useful, consider giving the repository a **⭐ Star**. It helps others discover the project and supports future improvements.
