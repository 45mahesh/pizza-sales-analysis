# 🍕 Pizza Sales Data Analysis



## 📌 Project Overview

This project analyzes pizza sales data to extract meaningful business insights using SQL. The dataset contains one year of sales transactions, including order details, pizza types, pricing, and quantities.



The goal of this project is to simulate a real-world data analysis scenario and provide actionable insights for business decision-making.



---



## 🎯 Objectives

- Analyze overall sales performance

- Identify top-selling pizzas and categories

- Understand customer ordering behavior

- Determine peak sales hours and trends

- Provide data-driven business recommendations



---



## 🛠️ Tools \& Technologies

- SQL (MySQL / PostgreSQL)

- Python (Pandas, optional for analysis)

- Jupyter Notebook

- Git \& GitHub



---



## 📂 Dataset Description



The dataset consists of four main tables:



### 1. orders

Contains order date and time information.



### 2. order\_details

Links orders with pizzas and includes quantity.



### 3. pizzas

Contains pizza size and pricing details.



### 4. pizza\_types

Includes pizza names, categories, and ingredients.



---



## 🔗 Data Relationships

- One order can have multiple order details

- Each order detail links to one pizza

- Each pizza belongs to a pizza type



---



## 📊 Key Analysis Performed

- Total revenue calculation

- Top-selling pizzas

- Revenue by category

- Peak ordering hours

- Order volume trends

- Size-wise sales distribution



---



## 📈 Key Insights

- Peak sales occur during evening hours (7 PM – 9 PM)

- Classic category generates the highest revenue

- Large-sized pizzas contribute the most to total sales

- Certain pizzas show consistently low demand

- Order frequency increases during weekends



---



## 💡 Business Recommendations

- Increase inventory during peak evening hours

- Promote top-performing pizza categories

- Consider removing or improving low-performing items

- Introduce targeted offers during off-peak hours



---


## 📁 Project Structure

pizza-sales-analysis/

│
├── data/

│   ├── raw/                 # original CSV files

│   └── processed/           # cleaned/transformed data 
│
├── sql/
│   ├── schema.sql           # table creation
│   ├── data\_import.sql      # loading CSVs
│   └── analysis.sql         # business queries
│
├── notebooks/               # Jupyter notebooks (Python analysis)
│   └── exploratory\_analysis.ipynb
│
├── reports/
│   ├── insights.md          # business insights 
│   └── summary.pdf          # final report
│
├── dashboards/              # visuals/screenshots
│   └── charts/
│
├── outputs/
│   ├── query\_results/       # exported results (CSV/screenshots)
│   └── logs/                
│
├── docs/
│   ├── ER\_diagram.png
│   └── data\_dictionary.md   # explains columns 
│
├── scripts/                 # automation 
│   └── data\_cleaning.py
│
├── config/                  # configs 
│   └── settings.yaml
│
├── tests/                   # 
│   └── test\_queries.sql
│
├── .gitignore
├── requirements.txt
└── README.md


---

## ▶️ How to Run the Project

1. Import CSV files into your SQL database
2. Run `schema.sql` to create tables
3. Execute `data\_import.sql` to load data
4. Run `analysis.sql` for insights

---

## 📌 Project Context

This project was completed as part of an industry-oriented internship experience, focusing on applying data analysis techniques to real-world datasets.

---

## 📬 Contact

For any questions or suggestions, feel free to connect.

