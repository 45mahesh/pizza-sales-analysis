# 🍕 Pizza Sales Performance & Revenue Analysis

---

## 📌 Project Overview

This project analyzes one year of pizza sales data to extract actionable business insights related to revenue, customer behavior, and product performance.

The project simulates a real-world data analysis workflow by combining **SQL for data querying** and **Python for exploratory analysis and visualization**.

---

## 🎯 Objectives

- Evaluate overall sales performance  
- Identify top-performing pizzas and categories  
- Analyze customer ordering patterns  
- Detect peak sales hours and trends  
- Generate data-driven business recommendations  

---

## 🛠️ Tools & Technologies

- **SQL (MySQL / PostgreSQL)** – Data querying and analysis  
- **Python (Pandas, Matplotlib)** – Data processing & visualization  
- **Jupyter Notebook** – Exploratory data analysis  
- **Git & GitHub** – Version control and project management  

---

## 📂 Dataset Description

The dataset consists of four relational tables:

### 1. orders  
Stores order date and time.

### 2. order_details  
Contains items ordered and quantity per order.

### 3. pizzas  
Includes pizza size and pricing.

### 4. pizza_types  
Contains pizza name, category, and ingredients.

---

## 🔗 Data Relationships

- One order → multiple order details  
- Each order detail → one pizza  
- Each pizza → one pizza type  

**Relational Flow:**

orders → order_details → pizzas → pizza_types  

---

## 🔄 Project Workflow

1. Data Collection (CSV files)  
2. Data Cleaning & Preprocessing (Python)  
3. Data Modeling (Relational schema)  
4. Data Analysis (SQL queries)  
5. Exploratory Data Analysis (Python)  
6. Visualization & Insight Generation  

---

## 📊 Key KPIs Analyzed

- Total Revenue  
- Total Orders  
- Average Order Value  
- Revenue by Category  
- Top-Selling Pizzas  
- Orders by Hour and Day  
- Sales by Pizza Size  

---

## 📈 Key Insights

- Peak sales occur during **evening hours (7 PM – 9 PM)**  
- A small number of pizzas contribute to a large portion of total revenue  
- **Classic category** generates the highest revenue  
- **Large-sized pizzas** contribute the most to overall sales  
- Order volume increases during weekends  
- Some pizzas consistently show low demand  

---

## 💡 Business Recommendations

- Increase staffing and inventory during peak evening hours  
- Focus promotions on high-performing pizzas  
- Improve or remove low-performing menu items  
- Introduce discounts during off-peak hours  
- Use sales trends for better inventory planning  

---

## 📊 Visualizations

The project includes multiple visual insights such as:

- Revenue by category  
- Top & bottom performing pizzas  
- Orders by hour  
- Daily revenue trends  
- Sales distribution by pizza size  

📁 Available in: `dashboards/charts/`

---

## 🧪 Data Validation

Basic data quality checks were performed:

- Null value checks  
- Invalid quantity validation  
- Price consistency checks  

📁 Refer to: `tests/test_queries.sql`

---

## 📁 Project Structure

```text
pizza-sales-analysis/
├── data/
│   ├── raw/
│   └── processed/
├── sql/
├── notebooks/
├── reports/
├── dashboards/
├── outputs/
├── docs/
├── scripts/
├── config/
├── tests/
├── .gitignore
├── requirements.txt
└── README.md


## ▶️ How to Run the Project
1. Import CSV files into your SQL database
2. Run schema.sql to create tables
3. Execute data_import.sql to load data
4. Run analysis.sql to perform analysis
5. Open Jupyter Notebook for visualizations


## 📌 Project Outcome

This project successfully demonstrates:

- End-to-end data analysis workflow
- SQL-based data extraction and aggregation
- Python-based data exploration and visualization
- Conversion of raw data into business insights


## 🚀 Future Improvements
- Build interactive dashboards (Power BI / Tableau)
- Automate ETL pipeline
- Add predictive analysis for demand forecasting

## 📄 License
This project is licensed under the MIT License.


## 📬 Contact

For any queries or suggestions, feel free to connect.
