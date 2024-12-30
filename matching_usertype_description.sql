--Changes usertype column in AlteredDivvyTrips2020 to match the description format of user types in AlteredDivvyTrips2019

UPDATE `cyclisticbikeshare-0._scripta531461b322daa1761c491ad5f61b363b6d8b564.AlteredDivvyTrips2020`
SET usertype = 
  CASE
    WHEN usertype = 'member' THEN 'Subscriber' --Changes 'member' to 'Subscriber'
    ELSE 'Customer' -- Changes 'casual' to 'Customer'
  END
WHERE TRUE;
