Here's a draft for a README file that describes the details of Task 1 for your project:

---

# Task 1: Graph Analysis of arXiv Citation Network

## Objective
This task aims to use the citation graph (or a selected subgraph) between arXiv papers to investigate the structure and relationships within the dataset. The analysis focuses on identifying key articles, exploring community structures, and describing network characteristics.

## Subgraph Creation
To manage computational complexity and focus on a relevant subset of data, a subgraph was created based on specific filtering criteria:
- **Criteria**: Articles categorized under 'hep-th' with a degree of at least 5 were chosen to form the subgraph.
- **Result**: The resulting subgraph includes 34,714 nodes and 576,515 edges, providing a manageable yet substantial dataset for in-depth analysis.

## Analysis Overview
### Q1: Importance of Articles
- **Metrics Used**: Degree Centrality, Betweenness Centrality, and PageRank.
- **Purpose**: These metrics help identify the most influential articles within the network, offering insights into which papers have shaped the field's trajectory.

### Q2: Community Detection
- **Method**: Louvain algorithm for community detection.
- **Findings**: The algorithm identified 68 communities, with detailed analysis provided for the top five. Each community was explored for thematic focus and significance within the field.

### Q3: Network Characteristics
- **Metrics**: Network Density, Average Clustering Coefficient, and connectivity analysis.
- **Discussion**: These characteristics provide insights into the overall structure of the citation network, including the tightness of clustering and the breadth of citation practices across the network.

## Data Sources
- **Metadata and Citation Data**: Sourced from the arXiv public dataset, specifically the ['arxiv-metadata-oai-snapshot.json'](https://www.kaggle.com/datasets/Cornell-University/arxiv) and ['internal-references-pdftotext.json'](https://github.com/mattbierbaum/arxiv-public-datasets/releases) 

## Tools and Libraries Used
- **Python Libraries**: NetworkX for graph analysis, Pandas for data manipulation, and Matplotlib for visualizations.

## Instructions for Replication
1. **Setup Environment**: Ensure Python and required libraries are installed.
2. **Data Preparation**: Download the necessary metadata and citation data files from the arXiv dataset.
3. **Running Analysis**: Execute the provided Python scripts to regenerate the analyses and visualizations.

