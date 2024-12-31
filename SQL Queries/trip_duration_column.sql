--This query will add a trip duration column to the AlteredDivvyTrips2020 table

--Adds tripduration column to AlteredDivvyTrips2020 table
ALTER TABLE `cyclisticbikeshare-0._scripta531461b322daa1761c491ad5f61b363b6d8b564.AlteredDivvyTrips2020`
ADD COLUMN tripduration FLOAT64;

--Populates tripduration column using end_time and start_time columns
UPDATE `cyclisticbikeshare-0._scripta531461b322daa1761c491ad5f61b363b6d8b564.AlteredDivvyTrips2020`
SET tripduration = CAST(TIMESTAMP_DIFF(end_time, start_time, SECOND) AS FLOAT64)
WHERE start_time IS NOT NULL AND end_time IS NOT NULL;
