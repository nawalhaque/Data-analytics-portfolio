

# Geochemical Soil Analysis for Predicting Mineral Deposits

## Project Overview
This project explores the potential to predict mineral deposits based on geochemical analysis of soil samples taken at various depths. By applying different solvents to the soil samples, the project measures the concentrations of various elements, aiming to infer the presence of deeper mineral deposits from surface soil chemistry.

## Dataset Description
The dataset consists of 215 samples detailed across 238 columns:
- **Depth (Dpth)**: Indicates the depth at which each sample was taken.
- **Element Concentrations**: Columns for each of the five solvents (ENZ, AAS, AA7, AQR, GDX) that detail the concentrations of elements extracted by these solvents.
- **Target Variable (Mineral Deposit)**: A binary indicator determined by whether the sample's location falls within a specific range indicative of a mineral deposit (186.2 to 214.6 meters).

## Methodologies Employed
### Data Preprocessing
- Standardization was applied to normalize the features.
- A binary target variable was created to signify the presence of mineral deposits based on specified distance criteria.

### Clustering and Analysis Techniques
- **K-Means Clustering**: Provided initial clustering to understand data structure, utilizing silhouette coefficients for validation.
- **Hierarchical Clustering**: Explored to uncover natural groupings and hierarchical structures in the data.
- **Expectation-Maximization (EM)**: Applied to model clusters with distinct means and variances, suitable for normally distributed features.
- **DBSCAN**: Tested for its ability to form clusters based on data density and handle outliers effectively.

### Predictive Modeling
- **Random Forest**: Chosen for its efficacy in handling the dataset’s complexity and high dimensionality, avoiding overfitting while providing robust predictive power.
- **Support Vector Machines (SVM)**: Employed with a polynomial kernel due to their effectiveness in high-dimensional spaces.
- **Neural Networks**: Configured to capture complex patterns and relationships within the data.

## Key Findings
- The combination of hierarchical clustering and SVM yielded the highest accuracy of approximately 89.767%.
- Overall, the models demonstrated consistent accuracies around 86%, validating the selected analytical approaches.

## Conclusion
The analysis successfully demonstrates that surface soil chemistry can provide significant insights into sub-surface mineral deposits, using advanced analytical techniques to model and predict these relationships.

## Using This Project
### KNIME Workflow
1. **Setup**: Ensure KNIME is installed and set up on your machine.
2. **Import Workflow**: Load the KNIME workflow files provided in this repository.
3. **Execute Nodes**: Run the nodes sequentially from data preprocessing to modeling and evaluation to reproduce the results.

### Requirements
- KNIME Analytics Platform


