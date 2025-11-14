
# Plant Disease Detection

A Python-based project that analyzes leaf species and detects plant diseases using image processing and machine learning techniques (CNN models like VGG16, VGG19, AlexNet, InceptionV3, ResNet50), trained on an augmented version of the PlantVillage dataset with over ~76,000 RGB images across 33 classes.

---

## 🧾 Table of Contents

1. [Introduction](#introduction)  
2. [Dataset & Augmentation](#dataset--augmentation)  
3. [Model Overview](#model-overview)  
4. [Installation](#installation)  
5. [Usage](#usage)  
6. [Evaluation & Results](#evaluation--results)  
7. [Project Structure](#project-structure)  
8. [Dependencies](#dependencies)  
9. [Contributing](#contributing)  
10. [License & Contact](#license--contact)

---

## Introduction

This project forms the backbone of a master’s thesis: **“Analysis of leaf species and detection of diseases using image processing and machine learning methods”**. The aim is to classify healthy and diseased leaves across multiple plant species using CNN-based architectures.

---

## Dataset & Augmentation

- Utilizes the **PlantVillage** dataset, consisting of approximately **76,000 RGB images** across **33 classes** (healthy vs. various disease states).
- **Offline augmentation** techniques (rotation, flipping, zoom, etc.) were applied to the source images to prevent overfitting and increase generalization.

---

## Model Overview

- Evaluated architectures: **VGG16, VGG19, AlexNet, InceptionV3, and ResNet50**.
- The best-performing model (based on validation accuracy) is selected for inference.
- Core concept: Convolutional Neural Networks assign weights to various regions/patterns in an image, enabling accurate classification with minimal pre‑processing compared to traditional approaches.

---

## Installation

```bash
git clone https://github.com/rohansamant1/plant_disease_detection-main.git
cd plant_disease_detection-main

# (Optional) Set up a virtual environment:
python3 -m venv venv
source venv/bin/activate      # Linux/macOS
venv\Scripts\activate       # Windows

pip install -r requirements.txt
```

---

## Usage

1. Place your dataset in the appropriate folder (e.g. `data/train`, `data/validation`).  
2. Run data preprocessing/augmentation script (e.g. `data_augmentation.py` or integrate in notebook).  
3. Train models using Jupyter Notebook or Python script:  
   ```bash
   python train_model.py  # or open the Jupyter notebook
   ```
4. After training, run inference on new images using the chosen model.  
5. Optionally, export the trained model (e.g. `.h5`) and create a simple web interface or CLI for classification.

---

## Evaluation & Results

- Models were compared on accuracy metrics and possibly loss curves.
- The model achieving the highest accuracy on validation/testing data is chosen as final.
- Suggestions: include confusion matrices, training history plots, or sample image predictions to illustrate performance.

---

## Project Structure

```
plant_disease_detection-main/
├── data/
│   ├── raw/             # original dataset
│   └── augmented/       # after preprocessing
├── notebooks/
│   └── Plant_Disease_Detection.ipynb
├── scripts/
│   ├── data_augmentation.py
│   ├── train_model.py
│   └── evaluate.py
├── models/
│   └── best_model.h5
├── requirements.txt
└── README.md
```

---

## Dependencies

Key Python packages typically used:

- `tensorflow` / `keras`  
- `opencv-python`  
- `numpy`  
- `pandas` (optional, for CSV/manipulation)  
- `matplotlib` or `seaborn` (for plotting)

---

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository and clone locally.  
2. Create a feature branch (`git checkout -b feature-name`).  
3. Commit your changes with meaningful messages.  
4. Push your branch and open a pull request.

---

## Contact
  
- **Author**: Rohan Samant  
- **Contact**: [GitHub Profile](https://github.com/rohansamant1)
