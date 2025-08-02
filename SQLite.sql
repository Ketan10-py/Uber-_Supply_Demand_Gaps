--To get overview of the dataset - 
SELECT Count(*) FROM UberRequestP07;



--To get total number of request -
SELECT COUNT('Request_id') AS total_requests
FROM UberRequestP07;
--total number of request is = '6745'


--To get request per pickup point --
SELECT `Pickup_point`,COUNT(*) AS total_requests
FROM UberRequestP07
GROUP BY `Pickup_point`;
--Request per pickup point - Airport 3238 , City	3507


--Requests per Status 
SELECT Status , COUNT(Status) AS total_requests
FROM UberRequestP07
GROUP BY Status;
--Requests per Status Cancelled	1264 , No Cars Available	2650, Trip Completed	2831.



--Number of Requests with No Driver Assigned
SELECT COUNT(*) AS unassigned_requests
FROM UberRequestP07
WHERE is_driver_assigned = 'No';
--Number of Requests with No Driver Assigned = 2650.


--Cancellation Rate by Pickup Point
SELECT Pickup_point,
       COUNT(*) AS total_requests,
       SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS cancellations
FROM UberRequestP07
GROUP BY Pickup_point;
--Cancellation Rate by Pickup Point -
--Airport  = total_request -3238, Cencellations -	198
--City	total_request -3507, Cencellations -	1066


--Daily Total Requests
SELECT 
  DATE(substr(Request_timestamp, 7, 4) || '-' || 
       substr(Request_timestamp, 4, 2) || '-' || 
       substr(Request_timestamp, 1, 2)) AS request_date,
  COUNT(*) AS total_requests
FROM UberRequestP07
GROUP BY request_date
ORDER BY request_date;
--Daily Total Requests is = 
---"2016-07-13"	"1337"
---"2016-07-14"	"1353"
---"2016-07-15"	"1381"
---"2016-11-07"	"1367"
---"2016-12-07"	"1307"


--- To get Max Request period -
SELECT request_period ,COUNT(request_period) as MAX_request_period 
FROM UberRequestP07
GROUP By request_period
ORDER BY MAX_request_period DESC
LIMIT 1;
-- So the max Request period is - Morning	2517e












