
🛍 Customer Shopping Behavior Analysis

📌 Project Overview

This project analyzes 3,900 customer transactions to uncover purchasing patterns, revenue drivers, customer segments, and subscription behavior.

The objective was to transform raw transactional data into business insights that support marketing, pricing strategy, and customer retention decisions.

🗂 Dataset Details

Total Records: 3,900

Features: 18

Key Attributes:

Demographics (Age, Gender, Location, Subscription Status)

Purchase Details (Item, Category, Season, Purchase Amount)

Behavioral Data (Discount Applied, Frequency, Shipping Type, Review Rating)

Data Issue: 37 missing values in review_rating column (handled using median imputation by category)

🛠 Tools & Technologies

Python (Pandas, NumPy) – Data cleaning & feature engineering

PostgreSQL – Business analysis queries

Power BI – Interactive dashboard visualization

🔍 Data Preparation

Cleaned missing review ratings using category-wise median

Standardized column names (snake_case)

Created new features:

age_group

purchase_frequency_days

Removed redundant columns

Loaded cleaned dataset into PostgreSQL for structured analysis

📊 Key Business Insights
💰 Revenue Insights

Male customers revenue: 157,890

Female customers revenue: 75,191

Highest revenue age group: Young Adults (62,143)

🛍 Product Insights

Top-rated products: Gloves, Sandals, Boots

Most purchased category: Clothing

Discount-dependent products: Hat (50%), Sneakers (49.66%)

📦 Shipping Analysis

Express shipping users have slightly higher average purchase value (60.48 vs 58.46)

👥 Customer Segmentation

Loyal Customers: 3,116

Returning Customers: 701

New Customers: 83

🔁 Subscription Analysis

Subscribers: 1,053 customers

Non-Subscribers: 2,847 customers

Subscription strategy shows retention opportunity among repeat buyers

📈 Dashboard

Built an interactive Power BI dashboard displaying:

Revenue by category

Revenue by age group

Subscription distribution

Average purchase amount

Review rating trends

🎯 Business Recommendations

Strengthen loyalty programs to retain high-value customers

Promote subscription benefits to repeat buyers

Review discount strategy to balance revenue and margins

Focus targeted campaigns on high-revenue age groups
