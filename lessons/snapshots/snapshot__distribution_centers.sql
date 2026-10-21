{% snapshot snapshot__distribution_centers %}

{{
    config(
      target_schema='dbt_test',
      unique_key='id',
      strategy='check',
      check_cols=['name', 'latitude', 'longitude']
    )
}}

SELECT * FROM {{ ref('seed_distribution_centers_new') }}

{% endsnapshot %}