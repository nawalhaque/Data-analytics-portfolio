
# Text Classifier Robustness Analysis Project

## Overview

This project investigates the robustness and transfer learning capabilities of text classifiers on the 20Newsgroup dataset. By integrating transfer learning techniques and exploring the impact of adversarial attacks, this analysis aims to evaluate and enhance the resilience of machine learning models against such perturbations.

## Data Description

The dataset, 20Newsgroup, consists of approximately 20,000 documents, evenly distributed across 20 different newsgroups. For this project, a subset comprising four distinct categories was selected to optimize computational resources and reduce semantic overlap.

- **Source:** [20Newsgroups Dataset](http://qwone.com/~jason/20Newsgroups/) Specifically "20news-bydate.tar.gz" 

## Prerequisites

Ensure the following requirements are met before running the project:

- Python 3.8 or later
- Libraries: `transformers`, `pandas`, `numpy`, `scikit-learn`, `nltk`
- Jupyter Notebook

Use the following command to install necessary libraries:
```bash
pip install transformers pandas numpy scikit-learn nltk
```

## How to Run

1. **Setup Environment:**
   - Ensure all required Python packages are installed.

2. **Data Preparation:**
   - Download the dataset from the provided link and place it in the project directory.

3. **Launch the Analysis:**
   - Open the provided Jupyter notebook (`a4code.ipynb`) in Jupyter by navigating to the project directory and running:
     ```bash
     jupyter notebook
     ```

4. **Execute the Notebook:**
   - Run the cells sequentially to perform the analysis, including model training, evaluation, and robustness testing.

## Methodology

### Task 1: Benchmarking Text Classifiers for Transfer Learning

- **Model Selection:** DistilBERT and Naive Bayes were chosen based on their contrasting characteristics, balancing computational efficiency and deep learning sophistication.
- **Performance Benchmarking:** Evaluated both models under various training scenarios, including full and reduced datasets. DistilBERT's performance was particularly notable, achieving superior results even with limited data.

### Task 2: Robustness Analysis

- **Adversarial Attack Design:** Implemented character-level and word-level adversarial attacks, including character swaps, character insertions, and synonym substitutions.
- **Impact Analysis:** Both models were tested against these adversarial samples, with DistilBERT showing robust performance, particularly against synonym substitution attacks.
- **Improvement Strategies:** Suggested methods like adversarial training and data augmentation to enhance model resilience.

## Results

- **Naive Bayes** showed decent performance with a highest accuracy of 82.44%, struggling slightly more with semantically complex categories.
- **DistilBERT** demonstrated strong adaptability and robustness, achieving an accuracy of 88.86% on the full dataset and 83.32% on a reduced dataset.
- **Robustness to Adversarial Attacks:** DistilBERT maintained higher resilience compared to Naive Bayes, particularly against synonym substitution, reflecting its robust handling of semantic variations.

## Conclusion

The project highlights the effectiveness of transfer learning and the importance of robustness in text classifiers. DistilBERT’s performance across various tests establishes it as a viable model for tasks requiring deep semantic understanding and resilience to input perturbations.
