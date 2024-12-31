--Merges the 2 tables and orders it by start time

CREATE TABLE TripData.MergedDivvyTrips AS
SELECT trip_id, start_time, end_time, from_station_name, from_station_id,to_station_name, to_station_id, usertype, tripduration
FROM `cyclisticbikeshare-0.TripData.AlteredDivvyTrips2019V2`

UNION ALL

SELECT trip_id, start_time, end_time, from_station_name, from_station_id,to_station_name, to_station_id, usertype, tripduration --should be in the same order as the 1st select statement
FROM (
  SELECT --subquery to correctly draw order
    start_time, --order rearranged to match the scheme of TripData.AlteredDivvyTrips2019V2
    end_time, 
    tripduration, 
    from_station_id, 
    from_station_name,
    to_station_id, 
    to_station_name, 
    usertype,
    trip_id
  FROM `cyclisticbikeshare-0._scripta531461b322daa1761c491ad5f61b363b6d8b564.AlteredDivvyTrips2020`
)

ORDER BY start_time; --sorts rows by start time
