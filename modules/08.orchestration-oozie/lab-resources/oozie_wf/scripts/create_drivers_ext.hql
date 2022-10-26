CREATE EXTERNAL TABLE IF NOT EXISTS ece_2020_fall_bda_${group}.${username}_nyc_drivers_ext (
  driver_id INT,
  name STRING,
  ssn INT,
  location STRING,
  certified STRING,
  wage_plan STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION '/education/ece/big-data/2020/fall/bda/gr${group}/${username}/lab4/nyc_drivers'
TBLPROPERTIES ('skip.header.line.count'='1');
