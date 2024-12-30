DECLARE column_mapping ARRAY<STRUCT<old_name STRING, new_name STRING>>;
SET column_mapping = [
  STRUCT('ride_id', 'id'),
  STRUCT('started_at', 'start_time'),
  STRUCT('ended_at', 'end_time'),
  STRUCT('start_station_id', 'from_station_id'),
  STRUCT('start_station_name', 'from_station_name'),
  STRUCT('end_station_id', 'to_station_id'),
  STRUCT('end_station_name', 'to_station_name')
];

CREATE TEMP TABLE AlteredDivvyTrips2019 AS 
SELECT * FROM `cyclisticbikeshare-0.TripData.DivvyTrips2019`;

CREATE TEMP TABLE AlteredDivvyTrips2020 AS 
SELECT * FROM `cyclisticbikeshare-0.TripData.DivvyTrips2020`;

FOR record IN (SELECT * FROM UNNEST(column_mapping)) DO
  EXECUTE IMMEDIATE FORMAT("""
    ALTER TABLE AlteredDivvyTrips2020
    RENAME COLUMN %s TO %s
  """, record.old_name, record.new_name);
END FOR;

ALTER TABLE AlteredDivvyTrips2020
  DROP COLUMN rideable_type;

ALTER TABLE AlteredDivvyTrips2020
  DROP COLUMN start_lat;

ALTER TABLE AlteredDivvyTrips2020
  DROP COLUMN end_lat;

ALTER TABLE AlteredDivvyTrips2020
  DROP COLUMN start_lng;

ALTER TABLE AlteredDivvyTrips2020
  DROP COLUMN end_lng;

ALTER TABLE AlteredDivvyTrips2019
  DROP COLUMN birthyear;
