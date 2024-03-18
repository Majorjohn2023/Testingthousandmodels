from setuptools import find_packages, setup

setup(
    name="Anurag_Project_Testing_New",
    version="0.0.1",
    packages=find_packages(),
    package_data={
        "Anurag_Project_Testing_New": [
            "dbt-project/**/*",
        ],
    },
    install_requires=[
        "dagster",
        "dagster-cloud",
        "dagster-dbt",
        "dbt-snowflake",
    ],
    extras_require={
        "dev": [
            "dagster-webserver",
        ]
    },
)

