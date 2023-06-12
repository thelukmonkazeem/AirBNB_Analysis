
/**

AirBNB PROJECT IN SQL

**/

--Overview of the dataset
SELECT * FROM air_b;

-- What is the total number of listing?
SELECT COUNT(1)  AS 'Total Listing' 
FROM air_b 

-- What is the total number of neighbourhood?
SELECT COUNT(DISTINCT neighbourhood) AS 'Total Number of Neighbourhood'
FROM air_b 

-- What is the total number of listing based on the room type?
SELECT room_type AS 'Room Type', COUNT(room_type) AS 'Total' 
FROM air_b
GROUP BY room_type
ORDER BY Total DESC

-- What is the total number of listing based on the Neigborhood Group?
SELECT neighbourhood_group AS 'Group', COUNT(*) AS 'Total_Listing' 
FROM air_b
GROUP BY neighbourhood_group
ORDER BY Total_Listing DESC

--What is the total number of listing (room type) based on the Neigborhood Group?
SELECT neighbourhood_group AS 'Group', room_type AS 'Room_Type', COUNT(*) AS 'Total_Listing' 
FROM air_b
GROUP BY neighbourhood_group, [Room_Type]
ORDER BY [Group]

-- What is the total number of host?
SELECT COUNT(DISTINCT host_id) AS 'Total Number of Host'
FROM air_b

-- Host with most listing (Top TEN Host on the Platform)?
SELECT TOP 3 (host_id) AS 'Host', COUNT(*) AS 'Total Listing by Host'
FROM air_b
GROUP BY host_id
ORDER BY [Total Listing by Host] DESC

-- What is the average price of Lisiting in New York
SELECT CONCAT('$',AVG(price)) AS 'Average Price'
FROM air_b

-- What is the highest price of Lisiting in New York
SELECT CONCAT('$',MAX(price)) AS 'Highest Price'
FROM air_b

-- What is the listing average price across the neighborhood group
SELECT neighbourhood_group AS 'Neighbourhood Group', CONCAT('$',AVG(price)) AS 'Average Price'
FROM air_b
GROUP BY neighbourhood_group


-- What is the listing availability in Newyork?
select neighbourhood_group AS 'Neighbourhood Group', room_type As 'Room Type',  AVG(availability_365) AS 'Number of Days'
FROM air_b
GROUP BY neighbourhood_group, room_type
order by neighbourhood_group, room_type;