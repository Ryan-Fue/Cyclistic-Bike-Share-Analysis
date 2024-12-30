--Deletes values from AlteredDivvyTrips2019 and AlteredDivvyTrips2020 that have a trip duration < 0  which is an error since this is realistically impossible

DELETE FROM `cyclisticbikeshare-0._scripta531461b322daa1761c491ad5f61b363b6d8b564.AlteredDivvyTrips2019`
WHERE tripduration < 0;

DELETE FROM `cyclisticbikeshare-0._scripta531461b322daa1761c491ad5f61b363b6d8b564.AlteredDivvyTrips2020`
WHERE tripduration < 0;

--Changes data type in AlteredDivvyTrips2019 to match AlteredDivvyTrips 2020

CREATE TABLE TripData.AlteredDivvyTrips2019V2 AS --Creates new table to contain altered data type
SELECT * EXCEPT(trip_id),
  CAST(trip_id AS STRING) AS trip_id --Changes trip_id from INT64 to STRING
FROM `cyclisticbikeshare-0._scripta531461b322daa1761c491ad5f61b363b6d8b564.AlteredDivvyTrips2019`;
