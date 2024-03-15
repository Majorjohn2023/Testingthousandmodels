import os

# Number of models to generate
num_models = 1000

# Base model name
base_model_name = "lineitem"

# TPC-H tables to join (assumed to be dbt models if in this list)
dbt_tables = ["orders", "customer", "part", "supplier", "partsupp"]

# Non-dbt tables (raw tables in your database)
external_tables = {"orders": "public.orders"}  # Example: {"table_name": "schema.table_name"}

# Output directory
output_dir = "models"

# Create the output directory if it doesn't exist
os.makedirs(output_dir, exist_ok=True)

def generate_model(model_index, prev_model_name, join_table):
    # Determine if join_table is a dbt model or an external table
    if join_table in dbt_tables:
        table_reference = f"{{{{ ref('{join_table}') }}}}"
    else:
        # Fall back to external table reference (update this as needed)
        table_reference = external_tables.get(join_table, join_table)
    
    join_conditions = [
        "m.l_orderkey = t.o_orderkey",
        "m.l_custkey = t.c_custkey",
        "m.l_partkey = t.p_partkey",
        "m.l_suppkey = t.s_suppkey",
        "m.l_partkey = t.ps_partkey and m.l_suppkey = t.ps_suppkey"
    ]
    
    # Default join condition if outside predefined joins
    default_condition = "m.key = t.key"
    # Get the appropriate join condition based on model_index
    join_condition = join_conditions[model_index - 1] if model_index <= len(join_conditions) else default_condition

    return f"SELECT m.*, t.* FROM {{{{ ref('{prev_model_name}') }}}} m JOIN {table_reference} t ON {join_condition}"

# Generate model files
for i in range(num_models):
    model_name = f"model_{i + 1}"
    model_file = os.path.join(output_dir, f"{model_name}.sql")

    with open(model_file, "w") as f:
        f.write("{{ config(materialized='table') }}\n\n")
        if i == 0:
            f.write(f"SELECT * FROM {{{{ ref('{base_model_name}') }}}}")
        else:
            prev_model_name = f"model_{i}"
            table_index = (i - 1) % len(dbt_tables)
            join_table = dbt_tables[table_index]
            f.write(generate_model(i, prev_model_name, join_table))

print(f"{num_models} model files generated in {output_dir}")
