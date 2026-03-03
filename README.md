# Hospital_Claims_Data
<br>

## 🏥 Healthcare Revenue Cycle & Clinical Performance Dashboard.
### 📌 Project Overview

This project presents a Healthcare Revenue Cycle Analytics Dashboard built to analyze financial, operational, and clinical performance using medical billing data.
The dashboard provides insights into:
Revenue cycle performance
- Payer and provider financial analysis
- Claims management and denial trends
- Clinical service line performance (ICD-10 and CPT)
- Payment and charge distribution patterns
  
The goal is to simulate a real-world Healthcare Data Analyst or Revenue Cycle Analyst use case, showing how billing data supports better financial and operational decisions.
<br>

### 📂 Dataset Overview
- Source: Kaggle
- Type: Synthetic Healthcare Claims Dataset
- Level: Claim-level transactional data

The dataset contains structured medical billing records including financial, insurance, provider, diagnosis, and procedure details.

Link of the DataSet : https://www.kaggle.com/datasets/abuthahir1998/synthetic-healthcare-claims-dataset/data

### 📘 Additional Dataset Information
The ICD-10 (Diagnosis Codes) and CPT (Procedure Codes) reference datasets used in this project were synthetically generated for educational and analytical purposes with AI assistance (Claude AI).

These datasets were designed to reflect realistic clinical coding scenarios and to add depth to the analysis within the project.

### 🗂 Dataset Description

1. **Claim ID**:
Unique identifier for each claim. 🔑

2. **Provider ID**:
Unique identifier for the healthcare provider submitting the claim.

3. **Patient ID**:
Unique identifier for the patient (randomly generated).

4. **Date of Service**:
The date when the healthcare service was provided.

5. **Procedure Code** (CPT/HCPCS):
The code representing the medical procedure or service rendered. 🔑

6. **Diagnosis Code** (ICD-10):
International Classification of Diseases code representing the patient’s diagnosis. 🔑

7. **Allowed Amount**:
The total amount billed for the service by the provider. 🔑

8. **Paid Amount**:
The amount paid by the insurer or patient for the claim. 🔑

9. **Insurance Type**:
The type of insurance coverage (e.g., Private, Medicare, Medicaid). 🔑

10. **Claim Status**:
The current status of the claim (e.g., Paid, Denied, Partially Paid).

11. **Reason Code**:
Code representing the reason for claim denial or payment adjustment. 🔑

12. **Follow-up Required**:
Indicates whether follow-up actions are required to resolve the claim.

13. **AR Status**:
Accounts Receivable status for the claim (e.g., Open, Closed).

14. **Outcome**:
Final outcome of the claim (e.g., Paid, Denied, Partial).

### 🎯 Project Objective

- Analyze overall revenue cycle performance
- Identify top revenue-generating procedures
- Evaluate diagnosis-level financial contribution
- Assess payer and provider payment efficiency
- Monitor claims requiring follow-up and revenue risk
- Study charge and payment distribution patterns
- Build drill-through analytical views for deeper insights

### 🛠 Tools & Technologies Used

***🗄 MySQL*** :
- Data importing and Data cleaning
- Aggregations and financial calculations
- Grouped analysis and filtering (Joins, Case When)


***📑 MicroSoft Excel*** :
- Organized the raw data
- Standardized date formats
- Cleaned and renamed columns
- Checked the data for errors and missing values

***🐍 Python***:
- Python was used for advanced distribution analysis and visualization of financial variables.
- pandas → Data manipulation and aggregation
- matplotlib → Histogram and boxplot visualizations

***📈 Powe BI Dashboard*** :
- KPI cards show a quick summary of key revenue cycle numbers.
- Bar Donut and line charts compare provider and payer performance and show trends over time.

 
