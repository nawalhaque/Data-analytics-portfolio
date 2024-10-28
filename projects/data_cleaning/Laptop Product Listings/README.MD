# Laptop Price Data Cleaning and Analysis

## Project Overview
This project focuses on the comprehensive cleaning and analysis of a laptop dataset. The goal is to transform raw data into a structured, consistent format ready for in-depth analysis and visualization.

## Dataset
The dataset includes specifications and prices of laptops, with features such as:
- **Company**: Manufacturer of the laptop
- **TypeName**: Type (e.g., Ultrabook, Notebook)
- **Inches**: Screen size
- **ScreenResolution**: Screen resolution
- **Cpu**: CPU details
- **Ram**: Amount of RAM
- **Memory**: Storage details (capacity and type)
- **Gpu**: GPU information
- **OpSys**: Operating system
- **Weight**: Weight of the laptop
- **Price**: Price of the laptop in currency units

## Data Cleaning Process
The data cleaning process was conducted in several steps to ensure data consistency and reliability:

1. **Missing Values Handling**:
   - Replaced common placeholders for missing values (e.g., `NaN`, `0`, `NULL`, `None`) with standardized `NaN`.
   - Removed rows with critical missing values after evaluating their significance.

2. **Data Type Adjustments**:
   - Converted numeric fields, such as `Ram` and `Weight`, to appropriate numeric types (e.g., `int64`, `float64`) after removing units (e.g., `GB` and `kg`).
   - Transformed categorical text fields (`Company`, `TypeName`, `OpSys`) to categorical data types to enhance memory efficiency and analysis speed.

3. **Feature Extraction and Transformation**:
   - Parsed the `ScreenResolution` column into `Resolution_Type`, `Resolution_Width`, and `Resolution_Height` for detailed screen analysis.
   - Created an on-the-fly calculation for `PPI` (Pixels Per Inch) from `Resolution_Width`, `Resolution_Height`, and `Inches`, used in visualizations to assess screen quality.
   - Extracted `Cpu_Brand`, `Cpu_Series`, and `Gpu_Brand` from the `Cpu` and `Gpu` columns for deeper analysis of processing components.

4. **Storage Information Standardization**:
   - Parsed `Memory` to separate `Memory_GB` (total storage in GB) and `Storage_Type` (e.g., SSD, HDD, Hybrid).
   - Consolidated mixed storage types (e.g., SSD and HDD) into a comma-separated list within `Storage_Type`.

5. **Data Optimization**:
   - Dropped redundant columns (e.g., `Cpu`, `Gpu`, `ScreenResolution`, and `Memory`) after parsing and extraction.
   - Verified all data types to ensure each column is optimized for analysis.

## Visualizations
The dataset is used to generate several insightful visualizations to explore patterns and relationships:

1. **Price Distribution by Brand**: Highlights the average and range of prices by laptop brand.
2. **Storage Type vs. Price**: Shows how different storage types (e.g., SSD, HDD) influence laptop prices.
3. **Operating System Popularity by Brand**: Illustrates the distribution of operating systems among laptop brands.
4. **Laptop Weight Distribution by Type**: Displays the weight variation among different laptop types (e.g., Ultrabook, Gaming).


## Requirements
- **Python 3.6+**
- **Pandas**
- **Matplotlib**
- **Seaborn**

Install the necessary packages using:
```bash
pip install pandas matplotlib seaborn

