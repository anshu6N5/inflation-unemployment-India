# inflation-unemployment-India
Analysis of the relationship between inflation and unemployment in India using World Bank WDI data and R. Inspired by the Phillips Curve theory.
# Inflation vs Unemployment in India 📈📉

This project analyzes the relationship between **inflation** and **unemployment** in **India** using World Bank's WDI data via R.

### 🔍 Objective

To check if higher unemployment leads to changes in inflation — inspired by the **Phillips Curve** theory.

---

## 📦 Data Source

- **World Bank WDI** via `WDI` R package
- Indicators used:
  - Inflation (% annual): `FP.CPI.TOTL.ZG`
  - Unemployment (% of labor force): `SL.UEM.TOTL.ZS`

---

## 🛠️ R Packages Used

```r
library(WDI)
library(tidyverse)
library(janitor)

📌 Key Findings
No strong overall correlation

But when unemployment > 7%, inflation tends to be higher

Indicates possible structural inflation pressures
No strong overall correlation

But when unemployment > 7%, inflation tends to be higher

Indicates possible structural inflation pressures
