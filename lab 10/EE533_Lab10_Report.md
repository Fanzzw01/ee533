# EE533_Lab10_Report

## 1. Verilog code for each unit



## 2. Software Training Process

### 2.1 ann.py

#### 2.1.1 Creating Virtual Environment

* Terminal Window

```
clint@usc-secure-wireless-new256 lab 10 % python3 -m venv ann_env              
clint@usc-secure-wireless-new256 lab 10 % source ann_env/bin/activate
(ann_env) clint@usc-secure-wireless-new256 lab 10 % python3 -m pip install torch torchvision numpy scikit-learn matplotlib
Requirement already satisfied: torch in ./ann_env/lib/python3.13/site-packages (2.6.0)
Requirement already satisfied: torchvision in ./ann_env/lib/python3.13/site-packages (0.21.0)
Requirement already satisfied: numpy in ./ann_env/lib/python3.13/site-packages (2.2.4)
Requirement already satisfied: scikit-learn in ./ann_env/lib/python3.13/site-packages (1.6.1)
Requirement already satisfied: matplotlib in ./ann_env/lib/python3.13/site-packages (3.10.1)
Requirement already satisfied: filelock in ./ann_env/lib/python3.13/site-packages (from torch) (3.18.0)
Requirement already satisfied: typing-extensions>=4.10.0 in ./ann_env/lib/python3.13/site-packages (from torch) (4.12.2)
Requirement already satisfied: networkx in ./ann_env/lib/python3.13/site-packages (from torch) (3.4.2)
Requirement already satisfied: jinja2 in ./ann_env/lib/python3.13/site-packages (from torch) (3.1.6)
Requirement already satisfied: fsspec in ./ann_env/lib/python3.13/site-packages (from torch) (2025.3.0)
Requirement already satisfied: setuptools in ./ann_env/lib/python3.13/site-packages (from torch) (77.0.1)
Requirement already satisfied: sympy==1.13.1 in ./ann_env/lib/python3.13/site-packages (from torch) (1.13.1)
Requirement already satisfied: mpmath<1.4,>=1.1.0 in ./ann_env/lib/python3.13/site-packages (from sympy==1.13.1->torch) (1.3.0)
Requirement already satisfied: pillow!=8.3.*,>=5.3.0 in ./ann_env/lib/python3.13/site-packages (from torchvision) (11.1.0)
Requirement already satisfied: scipy>=1.6.0 in ./ann_env/lib/python3.13/site-packages (from scikit-learn) (1.15.2)
Requirement already satisfied: joblib>=1.2.0 in ./ann_env/lib/python3.13/site-packages (from scikit-learn) (1.4.2)
Requirement already satisfied: threadpoolctl>=3.1.0 in ./ann_env/lib/python3.13/site-packages (from scikit-learn) (3.6.0)
Requirement already satisfied: contourpy>=1.0.1 in ./ann_env/lib/python3.13/site-packages (from matplotlib) (1.3.1)
Requirement already satisfied: cycler>=0.10 in ./ann_env/lib/python3.13/site-packages (from matplotlib) (0.12.1)
Requirement already satisfied: fonttools>=4.22.0 in ./ann_env/lib/python3.13/site-packages (from matplotlib) (4.56.0)
Requirement already satisfied: kiwisolver>=1.3.1 in ./ann_env/lib/python3.13/site-packages (from matplotlib) (1.4.8)
Requirement already satisfied: packaging>=20.0 in ./ann_env/lib/python3.13/site-packages (from matplotlib) (24.2)
Requirement already satisfied: pyparsing>=2.3.1 in ./ann_env/lib/python3.13/site-packages (from matplotlib) (3.2.1)
Requirement already satisfied: python-dateutil>=2.7 in ./ann_env/lib/python3.13/site-packages (from matplotlib) (2.9.0.post0)
Requirement already satisfied: six>=1.5 in ./ann_env/lib/python3.13/site-packages (from python-dateutil>=2.7->matplotlib) (1.17.0)
Requirement already satisfied: MarkupSafe>=2.0 in ./ann_env/lib/python3.13/site-packages (from jinja2->torch) (3.0.2)

[notice] A new release of pip is available: 25.0 -> 25.0.1
[notice] To update, run: pip install --upgrade pip
```

* Screenshot

![Screenshot 2025-03-21 at 2.27.43 PM](/Users/clint/Documents/ee533/lab 10/Pic/Screenshot 2025-03-21 at 2.27.43 PM.png)

#### 2.1.2 Modified part for ann.py

* For printing the generated input images' 64-bit value in terminal window

```python
    # Print out the image into 64-bit value
    print("64-bit input vector:\n")
    print(X_test[rand_idx])
```

#### 2.1.3 Software Training

* Terminal Window

```
(ann_env) clint@usc-secure-wireless-new256 lab 10 % python3 ann.py
Test Accuracy = 57.78%
64-bit input vector:

tensor([0., 0., 0., 1., 1., 1., 0., 0., 0., 0., 1., 1., 1., 1., 0., 0., 0., 0.,
        0., 0., 1., 1., 0., 0., 0., 0., 0., 0., 1., 1., 0., 0., 0., 0., 0., 0.,
        1., 1., 0., 0., 0., 0., 0., 0., 0., 1., 0., 0., 0., 0., 0., 1., 1., 0.,
        0., 0., 0., 0., 0., 1., 1., 0., 0., 0.], dtype=torch.float16)
64-bit input vector:

tensor([0., 0., 1., 1., 1., 1., 0., 0., 0., 0., 1., 1., 0., 0., 0., 0., 0., 0.,
        1., 0., 0., 0., 0., 0., 0., 0., 1., 1., 1., 0., 0., 0., 0., 0., 0., 0.,
        0., 1., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 1.,
        0., 0., 0., 0., 1., 1., 1., 0., 0., 0.], dtype=torch.float16)
64-bit input vector:

tensor([0., 0., 1., 1., 1., 1., 0., 0., 0., 0., 1., 1., 0., 1., 1., 0., 0., 0.,
        0., 0., 1., 1., 0., 0., 0., 0., 0., 1., 1., 0., 0., 0., 0., 0., 0., 0.,
        1., 1., 0., 0., 0., 0., 0., 0., 0., 1., 0., 0., 0., 0., 0., 0., 0., 1.,
        0., 0., 0., 0., 1., 1., 1., 0., 0., 0.], dtype=torch.float16)
64-bit input vector:

tensor([0., 0., 0., 0., 1., 0., 0., 0., 0., 0., 0., 1., 1., 0., 0., 0., 0., 0.,
        0., 1., 1., 0., 0., 0., 0., 0., 1., 0., 1., 0., 0., 0., 0., 1., 1., 1.,
        1., 1., 1., 0., 0., 0., 1., 1., 1., 0., 0., 0., 0., 0., 0., 0., 1., 0.,
        0., 0., 0., 0., 0., 0., 1., 0., 0., 0.], dtype=torch.float16)
64-bit input vector:

tensor([0., 0., 0., 1., 1., 0., 0., 0., 0., 0., 1., 1., 1., 0., 0., 0., 0., 0.,
        1., 0., 1., 1., 0., 0., 0., 0., 1., 1., 1., 1., 0., 0., 0., 0., 0., 1.,
        0., 1., 0., 0., 0., 0., 0., 0., 0., 1., 0., 0., 0., 0., 1., 1., 1., 1.,
        0., 0., 0., 0., 0., 1., 1., 1., 0., 0.], dtype=torch.float16)
64-bit input vector:

tensor([0., 0., 0., 1., 1., 0., 0., 0., 0., 0., 1., 1., 1., 0., 0., 0., 0., 0.,
        1., 0., 1., 1., 0., 0., 0., 0., 1., 1., 1., 1., 0., 0., 0., 0., 0., 1.,
        0., 1., 0., 0., 0., 0., 0., 0., 0., 1., 0., 0., 0., 0., 1., 1., 1., 1.,
        0., 0., 0., 0., 0., 1., 1., 1., 0., 0.], dtype=torch.float16)
64-bit input vector:

tensor([0., 0., 0., 1., 0., 0., 0., 0., 0., 0., 1., 1., 1., 1., 0., 0., 0., 0.,
        1., 1., 0., 1., 0., 0., 0., 0., 1., 0., 0., 0., 0., 0., 0., 0., 1., 0.,
        0., 0., 1., 0., 0., 0., 1., 0., 0., 0., 0., 0., 0., 0., 1., 1., 0., 1.,
        0., 0., 0., 0., 0., 1., 1., 1., 0., 0.], dtype=torch.float16)
64-bit input vector:

tensor([0., 0., 0., 1., 1., 0., 0., 0., 0., 0., 0., 1., 0., 0., 0., 0., 0., 0.,
        1., 1., 0., 0., 0., 0., 0., 0., 1., 1., 1., 1., 1., 0., 0., 1., 1., 1.,
        1., 1., 0., 0., 0., 0., 0., 1., 1., 1., 0., 0., 0., 0., 0., 1., 1., 0.,
        0., 0., 0., 0., 0., 1., 1., 0., 0., 0.], dtype=torch.float16)
64-bit input vector:

tensor([0., 0., 0., 0., 1., 0., 0., 0., 0., 0., 0., 1., 1., 0., 0., 0., 0., 0.,
        1., 1., 0., 1., 1., 0., 0., 0., 1., 0., 0., 1., 1., 0., 0., 1., 1., 1.,
        1., 1., 0., 0., 0., 1., 1., 1., 1., 1., 0., 0., 0., 0., 0., 0., 1., 1.,
        0., 0., 0., 0., 0., 0., 1., 1., 0., 0.], dtype=torch.float16)
64-bit input vector:

tensor([0., 0., 0., 0., 0., 1., 0., 0., 0., 0., 0., 0., 1., 1., 0., 0., 0., 0.,
        1., 1., 1., 1., 0., 0., 0., 0., 1., 0., 0., 1., 0., 0., 0., 0., 0., 0.,
        0., 1., 0., 0., 0., 0., 0., 0., 0., 1., 0., 0., 0., 0., 0., 0., 0., 1.,
        0., 0., 0., 0., 0., 0., 0., 1., 0., 0.], dtype=torch.float16)
Hidden layer weights saved to hidden_weights.txt (float16 in text form).
Output layer weights saved to output_weights.txt (float16 in text form).
```

* Screenshot

![Screenshot 2025-03-21 at 2.30.52 PM](/Users/clint/Documents/ee533/lab 10/Pic/Screenshot 2025-03-21 at 2.30.52 PM.png)

* Output Figure

![Figure_1](/Users/clint/Documents/ee533/lab 10/Pic/Figure_1.png)

* Output txt file

  * hidden_weights.txt

  ```
  0.11346 0.04938 -0.60938 -0.67139 -1.47070 -0.83740 -2.18164 0.96777 0.03436 -0.12866 -1.27441 -1.15332 -0.85254 -0.15381 -0.42358 0.86084 -0.00831 -0.57422 0.56592 -0.16846 -0.14197 -0.42163 0.52783 -0.10315 0.02483 0.38745 0.53027 -0.46826 -0.67676 -0.15417 1.15625 0.00417 -0.07196 0.30273 -0.04443 0.70557 0.99707 -0.53516 -0.19482 0.07904 -0.05725 -0.25830 2.31445 2.24414 0.68555 -0.74219 -0.55225 0.11664 -0.06622 0.50977 0.59473 1.30371 0.67627 1.64551 0.26636 0.44946 0.09113 -0.00078 -0.58643 -0.45459 2.57812 1.75684 1.30176 0.90918
  -0.09937 -0.00195 -1.33789 0.69873 -0.06909 -0.55713 1.34961 0.86768 -0.09528 0.39941 0.03546 -0.02039 0.76709 -0.43970 0.05701 -0.02724 -0.06036 -1.36133 -0.17407 -0.01154 -2.10156 -0.24487 -0.75293 0.03452 -0.01903 -0.29321 0.18445 -2.43750 -2.14062 -0.16626 4.50781 -0.02739 -0.11761 1.13770 2.35352 -0.07422 0.35962 1.20215 1.32520 0.04865 0.04080 2.04883 2.44336 0.74023 0.32617 0.27734 0.74316 -0.01714 -0.01633 0.20081 -0.74902 1.74609 -0.42847 0.54395 -0.53271 -0.17676 0.06323 -0.21790 0.77344 -0.46558 -1.20117 -0.55713 -0.66699 -0.37085
  -0.00962 -0.05368 0.26562 0.55566 0.04770 -0.48267 1.16797 -0.01275 -0.08411 0.54248 0.65771 -0.11035 0.34155 0.15369 -0.02936 0.02759 0.11584 0.00439 0.05743 -1.33691 -0.43457 0.64355 -0.12292 -0.08966 -0.02228 -0.79492 -0.13208 -1.50879 -1.01367 -0.65186 0.07251 -0.02141 -0.09106 -0.60059 -0.03363 -0.27563 -0.88721 -0.90918 -0.05042 -0.07495 0.05090 -1.27539 0.38574 -0.56250 -1.29980 0.07166 1.08008 -0.08344 0.11786 0.14221 -0.05258 0.94824 1.13770 1.05176 0.38379 -1.54395 0.00459 0.23779 1.02930 0.12915 2.55078 0.95459 1.05859 -1.97754
  ```

  * output_weights.txt

  ```
  -0.55615 1.22559 1.35645
  2.02344 -1.91895 -1.44043
  1.35156 -2.07812 0.91113
  -1.10449 -1.57227 1.36621
  1.06152 1.78516 -3.71094
  -1.79199 0.98438 1.42383
  1.38477 0.63818 -0.23511
  -1.94336 2.14453 -1.70215
  1.74316 -1.45703 0.14514
  -1.40234 0.20984 1.47852
  ```

### 2.2 Inference.cpp

#### 2.2.1 Modified Inference_new.cpp

```c++
#include <iostream>
#include <fstream>
#include <vector>
#include <cmath>

using half = __fp16;

const int INPUT_SIZE = 64;
const int HIDDEN_SIZE = 3;
const int OUTPUT_SIZE = 10;
const int IMAGE_NUM = 10;

void load_weights(const std::string& filename, std::vector<half>& weights) {
    std::ifstream file(filename);
    if (!file) {
        std::cerr << "Error: Could not open " << filename << std::endl;
        exit(1);
    }
    float value;
    while (file >> value) {
        weights.push_back(static_cast<half>(value));
    }
    file.close();
}

inline half relu(half x) {
    return (x > 0) ? x : 0;
}

int main() {
    std::vector<half> hidden_weights;
    std::vector<half> output_weights;
    
    load_weights("hidden_weights.txt", hidden_weights);
    load_weights("output_weights.txt", output_weights);

    // half input[INPUT_SIZE] = {
    //     0, 1, 0, 0, 1, 1, 0, 1, 
    //     1, 0, 1, 1, 0, 0, 1, 1, 
    //     0, 1, 1, 0, 1, 1, 0, 1, 
    //     0, 1, 0, 0, 1, 1, 0, 1, 
    //     1, 0, 1, 1, 0, 0, 1, 1, 
    //     0, 1, 1, 0, 1, 1, 0, 1, 
    //     0, 1, 0, 0, 1, 1, 0, 1, 
    //     1, 0, 1, 1, 0, 0, 1, 1
    // };
    half input[IMAGE_NUM][INPUT_SIZE] = {
        {
            0, 0, 0, 1, 1, 1, 0, 0,
            0, 0, 1, 1, 1, 1, 0, 0, 
            0, 0, 0, 0, 1, 1, 0, 0,
            0, 0, 0, 0, 1, 1, 0, 0,
            0, 0, 0, 0, 1, 1, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 0, 1, 1, 0, 0, 0,
            0, 0, 0, 1, 1, 0, 0, 0
        },
        {
            0, 0, 1, 1, 1, 1, 0, 0,
            0, 0, 1, 1, 0, 0, 0, 0,
            0, 0, 1, 0, 0, 0, 0, 0,
            0, 0, 1, 1, 1, 0, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 1, 1, 1, 0, 0, 0
        },
        {
            0, 0, 1, 1, 1, 1, 0, 0,
            0, 0, 1, 1, 0, 1, 1, 0,
            0, 0, 0, 0, 1, 1, 0, 0,
            0, 0, 0, 1, 1, 0, 0, 0,
            0, 0, 0, 0, 1, 1, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 1, 1, 1, 0, 0, 0
        },
        {
            0, 0, 0, 0, 1, 0, 0, 0,
            0, 0, 0, 1, 1, 0, 0, 0,
            0, 0, 0, 1, 1, 0, 0, 0,
            0, 0, 1, 0, 1, 0, 0, 0,
            0, 1, 1, 1, 1, 1, 1, 0,
            0, 0, 1, 1, 1, 0, 0, 0,
            0, 0, 0, 0, 1, 0, 0, 0,
            0, 0, 0, 0, 1, 0, 0, 0
        },
        {
            0, 0, 0, 1, 1, 0, 0, 0,
            0, 0, 1, 1, 1, 0, 0, 0,
            0, 0, 1, 0, 1, 1, 0, 0,
            0, 0, 1, 1, 1, 1, 0, 0,
            0, 0, 0, 1, 0, 1, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 1, 1, 1, 1, 0, 0,
            0, 0, 0, 1, 1, 1, 0, 0
        },
        {
            0, 0, 0, 1, 1, 0, 0, 0,
            0, 0, 1, 1, 1, 0, 0, 0,
            0, 0, 1, 0, 1, 1, 0, 0,
            0, 0, 1, 1, 1, 1, 0, 0,
            0, 0, 0, 1, 0, 1, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 1, 1, 1, 1, 0, 0,
            0, 0, 0, 1, 1, 1, 0, 0
        },
        {
            0, 0, 0, 1, 0, 0, 0, 0,
            0, 0, 1, 1, 1, 1, 0, 0,
            0, 0, 1, 1, 0, 1, 0, 0,
            0, 0, 1, 0, 0, 0, 0, 0,
            0, 0, 1, 0, 0, 0, 1, 0,
            0, 0, 1, 0, 0, 0, 0, 0,
            0, 0, 1, 1, 0, 1, 0, 0,
            0, 0, 0, 1, 1, 1, 0, 0
        },
        {
            0, 0, 0, 1, 1, 0, 0, 0,
            0, 0, 0, 1, 0, 0, 0, 0,
            0, 0, 1, 1, 0, 0, 0, 0,
            0, 0, 1, 1, 1, 1, 1, 0,
            0, 1, 1, 1, 1, 1, 0, 0,
            0, 0, 0, 1, 1, 1, 0, 0,
            0, 0, 0, 1, 1, 0, 0, 0,
            0, 0, 0, 1, 1, 0, 0, 0
        },
        {
            0, 0, 0, 0, 1, 0, 0, 0,
            0, 0, 0, 1, 1, 0, 0, 0,
            0, 0, 1, 1, 0, 1, 1, 0,
            0, 0, 1, 0, 0, 1, 1, 0,
            0, 1, 1, 1, 1, 1, 0, 0,
            0, 1, 1, 1, 1, 1, 0, 0,
            0, 0, 0, 0, 1, 1, 0, 0,
            0, 0, 0, 0, 1, 1, 0, 0
        },
        {
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 0, 0, 1, 1, 0, 0,
            0, 0, 1, 1, 1, 1, 0, 0,
            0, 0, 1, 0, 0, 1, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 0, 0, 0, 1, 0, 0
        }
    };
    // input[0][INPUT_SIZE] = {
    //     0, 0, 0, 1, 1, 1, 0, 0,
    //     0, 0, 1, 1, 1, 1, 0, 0, 
    //     0, 0, 0, 0, 1, 1, 0, 0,
    //     0, 0, 0, 0, 1, 1, 0, 0,
    //     0, 0, 0, 0, 1, 1, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 0, 1, 1, 0, 0, 0,
    //     0, 0, 0, 1, 1, 0, 0, 0
    // };
    // input[1][INPUT_SIZE] = {
    //     0, 0, 1, 1, 1, 1, 0, 0,
    //     0, 0, 1, 1, 0, 0, 0, 0,
    //     0, 0, 1, 0, 0, 0, 0, 0,
    //     0, 0, 1, 1, 1, 0, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 0, 0, 0, 0, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 1, 1, 1, 0, 0, 0
    // };
    // input[2][INPUT_SIZE] = {
    //     0, 0, 1, 1, 1, 1, 0, 0,
    //     0, 0, 1, 1, 0, 1, 1, 0,
    //     0, 0, 0, 0, 1, 1, 0, 0,
    //     0, 0, 0, 1, 1, 0, 0, 0,
    //     0, 0, 0, 0, 1, 1, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 1, 1, 1, 0, 0, 0
    // };
    // input[3][INPUT_SIZE] = {
    //     0, 0, 0, 0, 1, 0, 0, 0,
    //     0, 0, 0, 1, 1, 0, 0, 0,
    //     0, 0, 0, 1, 1, 0, 0, 0,
    //     0, 0, 1, 0, 1, 0, 0, 0,
    //     0, 1, 1, 1, 1, 1, 1, 0,
    //     0, 0, 1, 1, 1, 0, 0, 0,
    //     0, 0, 0, 0, 1, 0, 0, 0,
    //     0, 0, 0, 0, 1, 0, 0, 0
    // };
    // input[4][INPUT_SIZE] = {
    //     0, 0, 0, 1, 1, 0, 0, 0,
    //     0, 0, 1, 1, 1, 0, 0, 0,
    //     0, 0, 1, 0, 1, 1, 0, 0,
    //     0, 0, 1, 1, 1, 1, 0, 0,
    //     0, 0, 0, 1, 0, 1, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 1, 1, 1, 1, 0, 0,
    //     0, 0, 0, 1, 1, 1, 0, 0
    // };
    // input[5][INPUT_SIZE] = {
    //     0, 0, 0, 1, 1, 0, 0, 0,
    //     0, 0, 1, 1, 1, 0, 0, 0,
    //     0, 0, 1, 0, 1, 1, 0, 0,
    //     0, 0, 1, 1, 1, 1, 0, 0,
    //     0, 0, 0, 1, 0, 1, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 1, 1, 1, 1, 0, 0,
    //     0, 0, 0, 1, 1, 1, 0, 0
    // };
    // input[6][INPUT_SIZE] = {
    //     0, 0, 0, 1, 0, 0, 0, 0,
    //     0, 0, 1, 1, 1, 1, 0, 0,
    //     0, 0, 1, 1, 0, 1, 0, 0,
    //     0, 0, 1, 0, 0, 0, 0, 0,
    //     0, 0, 1, 0, 0, 0, 1, 0,
    //     0, 0, 1, 0, 0, 0, 0, 0,
    //     0, 0, 1, 1, 0, 1, 0, 0,
    //     0, 0, 0, 1, 1, 1, 0, 0
    // };
    // input[7][INPUT_SIZE] = {
    //     0, 0, 0, 1, 1, 0, 0, 0,
    //     0, 0, 0, 1, 0, 0, 0, 0,
    //     0, 0, 1, 1, 0, 0, 0, 0,
    //     0, 0, 1, 1, 1, 1, 1, 0,
    //     0, 1, 1, 1, 1, 1, 0, 0,
    //     0, 0, 0, 1, 1, 1, 0, 0,
    //     0, 0, 0, 1, 1, 0, 0, 0,
    //     0, 0, 0, 1, 1, 0, 0, 0
    // };
    // input[8][INPUT_SIZE] = {
    //     0, 0, 0, 0, 1, 0, 0, 0,
    //     0, 0, 0, 1, 1, 0, 0, 0,
    //     0, 0, 1, 1, 0, 1, 1, 0,
    //     0, 0, 1, 0, 0, 1, 1, 0,
    //     0, 1, 1, 1, 1, 1, 0, 0,
    //     0, 1, 1, 1, 1, 1, 0, 0,
    //     0, 0, 0, 0, 1, 1, 0, 0,
    //     0, 0, 0, 0, 1, 1, 0, 0
    // };
    // input[9][INPUT_SIZE] = {
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 0, 0, 1, 1, 0, 0,
    //     0, 0, 1, 1, 1, 1, 0, 0,
    //     0, 0, 1, 0, 0, 1, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0,
    //     0, 0, 0, 0, 0, 1, 0, 0
    // };

    for (int img = 0; img < IMAGE_NUM; img++) {
        half hidden[HIDDEN_SIZE] = {0, 0, 0};
        for (int h = 0; h < HIDDEN_SIZE; h++) {
            half sum = 0;
            for (int i = 0; i < INPUT_SIZE; i++) {
                sum += input[img][i] * hidden_weights[h * INPUT_SIZE + i];
            }
            hidden[h] = relu(sum);
        }

        half output[OUTPUT_SIZE] = {0};
        for (int o = 0; o < OUTPUT_SIZE; o++) {
            half sum = 0;
            for (int h = 0; h < HIDDEN_SIZE; h++) {
                sum += hidden[h] * output_weights[o * HIDDEN_SIZE + h];
            }
            output[o] = sum;
        }

        int predicted_class = 0;
        half max_value = output[0];
        for (int o = 1; o < OUTPUT_SIZE; o++) {
            if (output[o] > max_value) {
                max_value = output[o];
                predicted_class = o;
            }
        }

        std::cout << "Image " << img << " Output logits: ";
        for (int o = 0; o < OUTPUT_SIZE; o++) {
            std::cout << static_cast<float>(output[o]) << " ";
        }
        std::cout << "\nPredicted class: " << predicted_class << std::endl << std::endl;
    }

    return 0;
}
```

#### 2.2.2 Apply and Run ./inference

* Terminal Window

```
(ann_env) clint@usc-secure-wireless-new256 lab 10 % g++ -o inference inference.cpp -std=c++11
(ann_env) clint@usc-secure-wireless-new256 lab 10 % ./inference
Output logits (printed as floats, stored in half):
0  0  0  0  0  0  0  0  0  0  
Predicted class: 0
(ann_env) clint@usc-secure-wireless-new256 lab 10 % ./inference
Output logits (printed as floats, stored in half):
-0.0938721  -0.06604  0.210205  0.088562  -0.158203  0.0353088  -0.217041  -0.20874  0.189575  -0.153687  
Predicted class: 2
(ann_env) clint@usc-secure-wireless-new256 lab 10 % g++ -o inference_new inference_new.cpp -std=c++11
(ann_env) clint@usc-secure-wireless-new256 lab 10 % ./inference_new
Image 0 Output logits: 3.72852 -3.95898 2.50391 3.75391 -10.1953 3.91211 -0.645996 -4.67578 0.398926 4.0625 
Predicted class: 9

Image 1 Output logits: 2.9707 -3.1543 1.99512 2.99219 -8.125 3.11719 -0.514648 -3.72656 0.317871 3.23633 
Predicted class: 9

Image 2 Output logits: 2.41797 -2.56641 1.62402 2.43555 -6.61328 2.53711 -0.418945 -3.0332 0.258789 2.63477 
Predicted class: 9

Image 3 Output logits: 2.64453 2.53711 -2.11719 -13.9297 14.7031 -5.67578 11.0781 -0.995117 3.12305 -7.12891 
Predicted class: 4

Image 4 Output logits: 4.75781 -3.125 5.51562 4.05859 -13.6328 3.36914 0.908203 -9.52344 2.93359 4.11328 
Predicted class: 2

Image 5 Output logits: 4.75781 -3.125 5.51562 4.05859 -13.6328 3.36914 0.908203 -9.52344 2.93359 4.11328 
Predicted class: 2

Image 6 Output logits: 13.4531 -9.67188 1.14941 -7.14453 -7.51172 5.10156 10.5781 -9.53906 2.19336 2.94922 
Predicted class: 0

Image 7 Output logits: 4.89062 -1.65723 -6.16797 -15.7344 16.8594 -3.06836 11.2578 3.51172 -0.184082 -5.96484 
Predicted class: 4

Image 8 Output logits: 10.1016 -3.27539 -12.6875 -32.75 35.0938 -6.53516 23.5 7.10938 -0.230225 -12.5078 
Predicted class: 4

Image 9 Output logits: -0.273682 0.996094 0.665039 -0.543457 0.522461 -0.881836 0.681641 -0.956543 0.85791 -0.69043 
Predicted class: 1

(ann_env) clint@usc-secure-wireless-new256 lab 10 % 
```

