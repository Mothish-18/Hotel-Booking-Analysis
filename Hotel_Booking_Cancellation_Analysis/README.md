# 🏨 Hotel Booking & Cancellation Analysis

### End-to-End Data Analytics Project | Python • SQL • Power BI

## 📌 Project Overview

The **Hotel Booking & Cancellation Analysis** project focuses on analysing hotel booking data to understand booking patterns, cancellation behaviour, customer preferences and pricing trends.

The project uses Python for data cleaning and preparation, SQL for data analysis and Power BI for developing an interactive dashboard.

The analysis covers two hotel types: City Hotel and Resort Hotel.

## 🎯 Business Objectives

- Analyse overall hotel booking performance.
- Understand booking cancellation patterns.
- Compare City Hotel and Resort Hotel.
- Identify trends in monthly and yearly bookings.
- Analyse customer behaviour and repeat guests.
- Identify countries contributing the highest bookings.
- Understand pricing patterns and average length of stay.
- Present business insights through an interactive dashboard.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and preparation |
| Pandas | Data manipulation and analysis |
| NumPy | Numerical operations |
| Jupyter Notebook | Python development |
| MySQL Workbench | SQL queries and analysis |
| Power BI | Dashboard development |
| DAX | Measures and calculations |

## 📂 Project Structure

Hotel_Booking_Analysis/
│
├── Dataset/
│   ├── hotel_bookings.csv
│   └── hotel_bookings_cleaned.csv
│
├── Python_Analysis/
│   └── Hotel_Booking_Analysis.ipynb
│
├── SQL_Analysis/
│   └── Hotel_Booking_SQL_Queries.sql
│
├── PowerBI_Dashboard/
│   ├── Hotel_Booking_Cancellation_Analysis.pbix
│   └── Hotel_Booking_Dashboard.pdf
│
├── Documentation/
│   └── Project_Documentation.docx
│
└── README.md


## 📊 Project Workflow

### 1. Data Cleaning & Preparation – Python

- Imported and inspected the dataset.
- Checked missing values and duplicates.
- Performed data cleaning.
- Created additional analytical columns.
- Prepared the cleaned dataset for further analysis.

### 2. Data Analysis – SQL

- Created a MySQL database.
- Imported the cleaned dataset.
- Performed SQL queries.
- Analysed booking performance and cancellations.
- Explored customer behaviour and booking trends.

### 3. Dashboard Development – Power BI

- Created DAX measures.
- Designed KPI cards.
- Developed charts and visualisations.
- Created a three-page interactive dashboard.
- Analysed booking and cancellation patterns.

## 📈 Power BI Dashboard

The dashboard contains three analytical pages.

### Page 1 – Hotel Booking Analysis

Provides an overview of hotel booking performance.

**KPIs:**
- Total Bookings
- Canceled Bookings
- Cancellation Rate
- Average ADR
- Average Stay
- Estimated Booking Value

**Visualisations:**
- Monthly Booking Trends
- Bookings by Hotel Type
- Booking Status

### Page 2 – Cancellation Analysis

Focuses on understanding booking cancellation behaviour.

**Visualisations:**
- Cancellation Rate by Hotel Type
- Cancellation Rate by Lead Time
- New vs Repeat Guest Bookings
- Top 10 Countries by Bookings
- Cancellation Rate by Market Segment

### Page 3 – Cancellation Trends

Analyses cancellation patterns over time.

**Visualisations:**
- Monthly Cancellations
- Monthly Cancellation Rate
- Cancellation Rate by Arrival Year

## 🔍 Key Business Insights

The project investigates the following business areas:

- Overall hotel booking and cancellation performance.
- Differences in booking behaviour between hotel types.
- Cancellation patterns across lead-time groups.
- New and repeat guest booking behaviour.
- Country-wise booking distribution.
- Cancellation trends across market segments.
- Monthly and yearly booking patterns.
- Average daily rate and estimated booking value.

**Note:** Actual numerical findings and business recommendations will be added after validating the final analysis results.

## 📁 Dataset Information

**Dataset:** Hotel Booking Demand Dataset

The dataset contains hotel booking records for City Hotel and Resort Hotel.

The working dataset contains approximately 119,390 records and 32 original columns.

The original and cleaned datasets are maintained separately.

## ⚙️ How to Run the Project

1. Download or clone this repository.
2. Open the Jupyter Notebook in the Python_Analysis folder.
3. Install the required Python libraries if they are not already installed.
4. Run the notebook cells in order.
5. Import the cleaned CSV into MySQL Workbench.
6. Execute the SQL queries.
7. Open the Power BI `.pbix` file using Power BI Desktop.
8. Update the data source path if required and refresh the report.

## ⚠️ Project Limitations

- Estimated Booking Value is calculated using ADR multiplied by total nights. It is not actual revenue collected.
- The analysis is based on historical booking data.
- Results depend on the dataset and data preparation decisions.

## 🚀 Skills Demonstrated

- Data Cleaning
- Data Preprocessing
- Feature Engineering
- Exploratory Data Analysis
- Python Programming
- SQL Querying
- Data Modelling
- DAX Measures
- Data Visualisation
- Dashboard Development
- Business Analysis

## 👨‍💻 Author

**[Mothish Kumar J]**

Aspiring Data Analyst

GitHub: [https://github.com/Mothish-18]

---

⭐ If you find this project useful, feel free to explore the repository.
