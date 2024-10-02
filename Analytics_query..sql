create or replace table my-test-project-397319.uber_dataengineering_project.uber_analytics_tbl as(
select 
vendorid,
tpep_pickup_datetime,
tpep_dropoff_datetime,
dropoff_latitude,
dropoff_longitude,
pickup_latitude,
pickup_longitude,
passenger_count,
ratecode_name,
trip_distance,
payment_type_name,
fare_amount,
extra,
mta_tax,
tip_amount,
tolls_amount,
Total_amount


from my-test-project-397319.uber_dataengineering_project.fact_table f 
join my-test-project-397319.uber_dataengineering_project.datetime_dim d on d.datetime_id = f.datetime_id
join my-test-project-397319.uber_dataengineering_project.dropoff_location_dim drop on drop.dropoff_location_id = f.dropoff_location_id
join my-test-project-397319.uber_dataengineering_project.passenger_count_dim p on p.passenger_count_id = f.passenger_count_id
join my-test-project-397319.uber_dataengineering_project.payment_type_dim pay on pay.payment_type_id = f.payment_type_id
join my-test-project-397319.uber_dataengineering_project.pickup_location_dim pick on pick.pickup_location_id =f.pickup_location_id
join my-test-project-397319.uber_dataengineering_project.rate_code_dim r on r.ratecode_id = f.ratecode_id
join my-test-project-397319.uber_dataengineering_project.trip_distance_dim t on t.trip_dist_id = f.trip_dist_id)
;

