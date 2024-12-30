--Deletes values from AlteredDivvyTrips2019 and AlteredDivvyTrips2020 that have a trip duration < 0  which is an error since this is realistically impossible

DELETE FROM `cyclisticbikeshare-0._scripta531461b322daa1761c491ad5f61b363b6d8b564.AlteredDivvyTrips2019`
WHERE tripduration < 0;

DELETE FROM `cyclisticbikeshare-0._scripta531461b322daa1761c491ad5f61b363b6d8b564.AlteredDivvyTrips2020`
WHERE tripduration < 0;
