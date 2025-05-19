# 📊 Data Cleaning Project: Layoffs Dataset

This project involves cleaning a real-world dataset of company layoffs using **SQL**. The goal is to prepare the raw data for analysis by removing inconsistencies, handling missing values, and standardizing entries.

---

## 🔧 Files Included

| File Name             | Description |
|----------------------|-------------|
| `layoffs-1.csv`       | Original raw dataset containing company layoff data |
| `Cleaned_Data.csv`    | Final cleaned version of the dataset |
| `Data Cleansing.sql`  | SQL script used to perform all cleaning operations |

---

## 🧹 Cleaning Steps (SQL Logic Summary)

1. **Remove Duplicates**  
   - Identified duplicates using `ROW_NUMBER()` with `PARTITION BY`
   - Deleted all duplicate entries while keeping the first occurrence

2. **Standardize Text Fields**  
   - Trimmed whitespace from company names  
   - Standardized values like:
     -  `cryptocurrency` → `crypto`
     - `united states.` → `United States`

3. **Handle Missing Values**  
   - Replaced blank strings in `industry` with `NULL`  
   - Imputed missing industries by matching company and location  
   - Deleted rows where both `total_laid_off` and `percentage_laid_off` were `NULL`

4. **Data Type Conversion**  
   - Converted `date` column from `TEXT` to `DATE`

---

## 💡 Tools Used

- **MySQL** for data cleaning
- **CSV files** for input/output
- Basic **window functions**, **CTEs**, and **conditional updates**

---

## 📈 Outcome

A clean, standardized, and analysis-ready dataset saved as `Cleaned_Data.csv`. This cleaned data can now be used for business analysis, visualization, or predictive modeling.

---

## 📌 How to Use

1. Import `layoffs-1.csv` into your SQL environment (e.g., MySQL Workbench)
2. Run the `Data Cleansing.sql` script step-by-step
3. Export the final result from `model_data2` as `Cleaned_Data.csv`

---


## 📬 Contact

**LOGESH V**  
Data Science & Analytics Enthusiast  
GitHub: [loges-v]  
Email: [logeshvarsha5@gmail.com]

---

