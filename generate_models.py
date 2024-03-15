import os

# Number of models to generate
num_models = 1000

# Base model name
base_model_name = "lineitem"

# TPC-H tables to join
tables = ["orders", "customer", "part", "supplier", "partsupp"]

# Output directory
output_dir = "models"

# Create the output directory if it doesn't exist
os.makedirs(output_dir, exist_ok=True)
def generate_model(model_index, prev_model_name, join_table):
    if model_index == 1:
        return f"select m.*, t.* from {{ ref('{prev_model_name}') }} m join {join_table} t on m.l_orderkey = t.o_orderkey"
    elif model_index == 2:
        return f"select m.*, t.* from {{ ref('{prev_model_name}') }} m join {join_table} t on m.l_custkey = t.c_custkey"
    elif model_index == 3:
        return f"select m.*, t.* from {{ ref('{prev_model_name}') }} m join {join_table} t on m.l_partkey = t.p_partkey"
    elif model_index == 4:
        return f"select m.*, t.* from {{ ref('{prev_model_name}') }} m join {join_table} t on m.l_suppkey = t.s_suppkey"
    elif model_index == 5:
        return f"select m.*, t.* from {{ ref('{prev_model_name}') }} m join {join_table} t on m.l_partkey = t.ps_partkey and m.l_suppkey = t.ps_suppkey"
    else:
        return f"select m.*, t.* from {{ ref('{prev_model_name}') }} m join {join_table} t on m.key = t.key"
# Generate model files
for i in range(num_models):
    model_name = f"model_{i + 1}"
    model_file = os.path.join(output_dir, f"{model_name}.sql")

    with open(model_file, "w") as f:
        f.write("{{ config(materialized='table') }}\n\n")
        if i == 0:
            f.write(f"select * from {{ ref('{base_model_name}') }}")
        else:
            prev_model_name = f"model_{i}"
            table_index = (i - 1) % len(tables)
            join_table = tables[table_index]
            f.write(generate_model(i, prev_model_name, join_table))

print(f"{num_models} model files generated in {output_dir}")