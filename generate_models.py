import os

# Number of models to generate
num_models = 1000

# Base model name
base_model_name = "lineitem"

# Output directory
output_dir = "models"

# Create the output directory if it doesn't exist
os.makedirs(output_dir, exist_ok=True)

def generate_model(model_index, prev_model_name):
    # Simply reference the previous model without joining with any other tables
    return f"SELECT * FROM {{{{ ref('{prev_model_name}') }}}}"

# Generate model files
for i in range(num_models):
    model_name = f"model_{i + 1}"
    model_file = os.path.join(output_dir, f"{model_name}.sql")

    with open(model_file, "w") as f:
        f.write("{{ config(materialized='table') }}\n\n")
        if i == 0:
            f.write(f"SELECT * FROM {{ ref('{base_model_name}') }}")
        else:
            # Previous model becomes the basis for each new model
            prev_model_name = f"model_{i}"
            f.write(generate_model(i + 1, prev_model_name))

print(f"{num_models} model files generated in {output_dir}")