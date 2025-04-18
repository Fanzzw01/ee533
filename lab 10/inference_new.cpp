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