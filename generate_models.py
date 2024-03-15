import os

# Number of models to generate
num_models = 1000

# Base model name
base_model_name = "lineitem"

# Database and schema for TPC-H tables to join
database_name = "snowflake_sample_data"
schema_name = "tpch_sf1"

# TPC-H tables to join
tables = ["orders", "customer", "part", "supplier", "partsupp"]

# Output directory
output_dir = "models"

# Create the output directory if it doesn't exist
os.makedirs(output_dir, exist_ok=True)

def generate_model(model_index, prev_model_name, join_table):
    # Define the join condition based on the model index and the specific table
    join_conditions = {
        "orders": "m.l_orderkey = t.o_orderkey",
        "customer": "m.o_custkey = t.c_custkey",  # Updated from m.l_custkey to m.o_custkey
        "part": "m.l_partkey = t.p_partkey",
        "supplier": "m.l_suppkey = t.s_suppkey",
        "partsupp": "m.l_partkey = t.ps_partkey and m.l_suppkey = t.ps_suppkey"
    }
    
    # Construct the FROM and JOIN parts of the SQL query
    from_join_sql = (
        f"SELECT m.*, t.*\n"
        f"FROM {{{{ ref('{prev_model_name}') }}}} m\n"
        f"JOIN {database_name}.{schema_name}.{join_table} t ON {join_conditions.get(join_table, 'm.key = t.key')}"
    )
    
    return from_join_sql

# Generate model files
for i in range(num_models):
    model_name = f"model_{i + 1}"
    model_file = os.path.join(output_dir, f"{model_name}.sql")

    with open(model_file, "w") as f:
        f.write("{{ config(materialized='table') }}\n\n")
        if i == 0:
            f.write(f"SELECT * FROM {{ ref('{base_model_name}') }}")
        else:
            prev_model_name = f"model_{i}"
            table_index = (i - 1) % len(tables)
            join_table = tables[table_index]
            f.write(generate_model(i + 1, prev_model_name, join_table))

print(f"{num_models} model files generated in {output_dir}")