
# 📊 Uber Supply-Demand Gap Analysis - Exploratory Data Analysis (EDA)

This project performs an in-depth **Exploratory Data Analysis (EDA)** of an Uber dataset to understand the dynamics between **supply and demand**. The objective is to uncover patterns, issues, and actionable insights—particularly around unfulfilled ride requests due to driver unavailability and peak-hour mismatches.

---

## 🧠 Objective

The main aim of this EDA is to:
- Identify peak hours and demand trends
- Analyze the reasons behind trip cancellations and unfulfilled rides
- Assess performance at different pickup points
- Highlight the mismatch between customer demand and driver availability

---

## 📂 Project Structure

```
Uber_supply_Demand_EDA.ipynb      # Jupyter Notebook containing full EDA workflow
README.md                         # Project documentation (this file)
```

---

## 🛠️ Technologies Used

- **Python 3**
- **Pandas**
- **NumPy**
- **Matplotlib**
- **Seaborn**

---

## 📌 Key Steps & Insights

### ✅ Data Cleaning
- Converted date-time columns into proper datetime format
- Extracted useful time-based features (hour, day)
- Handled missing values and duplicates

### 📈 Visual Analysis
- Bar plots and countplots used to visualize request statuses over time
- Peak demand hours were identified (5–9 AM and 5–10 PM)
- Airport vs City pickup trends were analyzed

### 🔍 Major Findings
- **More rides were unfulfilled than completed**, especially during peak hours
- **Driver unavailability** is the leading cause of uncompleted rides
- **City pickups** see more cancellations, while **airport pickups** see more "no cars available"
- Demand significantly exceeds supply during morning and evening rush hours

---

## 📌 Dataset

The dataset contains Uber ride request records with the following columns:
- `Request id`
- `Pickup point` (City or Airport)
- `Driver id`
- `Status` (Completed, Cancelled, No Cars Available)
- `Request timestamp`
- `Drop timestamp`

---

## ▶️ How to Run

1. Clone this repository or download the `.ipynb` file
2. Open the notebook using **Google Colab** or **Jupyter Notebook**
3. Run all cells step by step to:
   - Load and clean data
   - Perform EDA
   - Visualize key insights

---

## 📊 Insights Presentation

You can extract the graphs and their interpretations as part of a report or PDF summary, focusing only on visual analytics and key observations.

---

## 📜 License

This project is for educational and analytical purposes.
