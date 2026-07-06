# Tute-Dude-Ds-Assignment-4
# KNN Diabetes Prediction Case Study

This project demonstrates the implementation of the K-Nearest Neighbors (KNN) algorithm for predicting diabetes using the Diabetes dataset.

## Project Workflow

### 1. Data Exploration
- Loaded the dataset using Pandas
- Checked:
  - Data types
  - Missing values
  - Dataset structure

### 2. Data Preprocessing
- Replaced invalid zero values with NaN
- Filled missing values using column mean
- Normalized features using StandardScaler

### 3. Train-Test Split
- Split the dataset into:
  - Training data
  - Testing data

### 4. KNN Model Implementation
- Implemented K-Nearest Neighbors classifier using Scikit-learn
- Used K = 5 neighbors for prediction

### 5. Model Evaluation
- Calculated model accuracy
- Generated confusion matrix
- Displayed classification report

### 6. Visualization
- Visualized the confusion matrix using Matplotlib

## Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Scikit-learn
