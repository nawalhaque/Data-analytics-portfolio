
# Fashion Product Image Classification

## Project Overview

This project aims to develop and refine a classifier that can automatically tag fashion products based on their images. This capability is crucial for e-commerce platforms, where accurate tagging can significantly enhance product discoverability and user experience.

## Data

The dataset used for this project is sourced from Kaggle, specifically the [Fashion Product Images (Small)](https://www.kaggle.com/datasets/paramaggarwal/fashion-product-images-small) dataset. It includes 44,441 images of various fashion items categorized into 13 subcategories such as Topwear, Bottomwear, Shoes, etc. The dataset comes with `train.csv` and `test.csv` files which contain metadata for each image, including image ID, label, and product display name.

## Analysis

### Part 1: Basic Image Classification
- **Objective:** Create a basic Convolutional Neural Network (CNN) to classify images into one of the 13 subcategories.
- **Approach:** The baseline CNN model was structured without specific requirements regarding its architecture. However, the design rationale was documented in the Jupyter Notebook.
- **Results:** Initial model evaluations were performed on training, validation, and test datasets. These results are discussed in detail in the Jupyter Notebook, along with the performance metrics.

### Part 2: Enhanced Image Classification
- **Objective:** Improve the classifier's accuracy by employing advanced techniques such as hyper-parameter tuning and data augmentation.
- **Approach:** Two enhanced models were developed. The first involved tuning a key hyper-parameter, justified by its potential impact on model performance. The second approach utilized data augmentation to increase the diversity of the training data.
- **Results:** Both models were evaluated thoroughly, with detailed comparisons to the baseline model presented in the Jupyter Notebook. The effectiveness of the improvements was backed by experimental results.

## Conclusions and Future Work

The project successfully demonstrates the application of CNNs in classifying fashion product images with a reasonable degree of accuracy. Future enhancements will focus on exploring additional model architectures and further hyper-parameter optimization to improve the classifier's performance. Continuous model training with expanded data and iterative refinements will also be prioritized to adapt to new fashion trends and categories.

