#include <iostream>
#include <fstream>
#include <vector>
#include <cmath>

using half = __fp16;  // Use half-precision floating point

const int INPUT_SIZE = 64;
const int HIDDEN_SIZE = 3;
const int OUTPUT_SIZE = 10;

// Function to read weights from a file
void load_weights(const std::string& filename, std::vector<half>& weights) {
    std::ifstream file(filename);
    if (!file) {
        std::cerr << "Error: Could not open " << filename << std::endl;
        exit(1);
    }
    float value;
    while (file >> value) {  // Read values as float
        weights.push_back(static_cast<half>(value));  // Convert to fp16
    }
    file.close();
}

// ReLU activation function
inline half relu(half x) {
    return (x > 0) ? x : 0;
}

int main() {
    // Load trained weights
    std::vector<half> hidden_weights;
    std::vector<half> output_weights;
    
    load_weights("hidden_weights.txt", hidden_weights);
    load_weights("output_weights.txt", output_weights);

    // Define a sample input (8×8 binary image)
    half input[INPUT_SIZE] = {
        0, 1, 0, 0, 1, 1, 0, 1, 
        1, 0, 1, 1, 0, 0, 1, 1, 
        0, 1, 1, 0, 1, 1, 0, 1, 
        0, 1, 0, 0, 1, 1, 0, 1, 
        1, 0, 1, 1, 0, 0, 1, 1, 
        0, 1, 1, 0, 1, 1, 0, 1, 
        0, 1, 0, 0, 1, 1, 0, 1, 
        1, 0, 1, 1, 0, 0, 1, 1
    };

    // Compute hidden layer activations
    half hidden[HIDDEN_SIZE] = {0, 0, 0};
    for (int h = 0; h < HIDDEN_SIZE; h++) {
        half sum = 0;
        for (int i = 0; i < INPUT_SIZE; i++) {
            sum += input[i] * hidden_weights[h * INPUT_SIZE + i];
        }
        hidden[h] = relu(sum);  // Apply ReLU
    }

    // Compute output layer activations
    half output[OUTPUT_SIZE] = {0};
    for (int o = 0; o < OUTPUT_SIZE; o++) {
        half sum = 0;
        for (int h = 0; h < HIDDEN_SIZE; h++) {
            sum += hidden[h] * output_weights[o * HIDDEN_SIZE + h];
        }
        output[o] = sum;  // No activation function in output layer (raw logits)
    }

    // Find the predicted class (argmax)
    int predicted_class = 0;
    half max_value = output[0];
    for (int o = 1; o < OUTPUT_SIZE; o++) {
        if (output[o] > max_value) {
            max_value = output[o];
            predicted_class = o;
        }
    }

    // Print results
    std::cout << "Output logits: ";
    for (int o = 0; o < OUTPUT_SIZE; o++) {
        std::cout << static_cast<float>(output[o]) << " ";
    }
    std::cout << "\nPredicted class: " << predicted_class << std::endl;

    return 0;
}