CREATE DATABASE VERTOCITY_DS_END_CAPSTONE1_PROJECT
USE VERTOCITY_DS_END_CAPSTONE1_PROJECT

CREATE TABLE passenger_feedback (
    feedback_id INT IDENTITY(1,1) PRIMARY KEY,  -- Auto Increment for unique IDs
    route_id INT NOT NULL,
    passenger_count INT,
    feedback_score INT CHECK(feedback_score BETWEEN 1 AND 5),  -- Valid feedback score between 1 and 5
    feedback_date DATE
);

SELECT * FROM passenger_feedback




--WORKING FLOW


SELECT * FROM passenger_feedback

-- Step 1: Enable IDENTITY_INSERT
SET IDENTITY_INSERT passenger_feedback ON;

-- Step 2: Insert the data (feedback score, route ID, etc., without Feedback_ID)
INSERT INTO passenger_feedback (Route_ID, Feedback_Score, Comments, feedback_date, passenger_count)
VALUES
(205, 4, 'Great service', '2025-02-20', 50),
(625, 1, 'Late arrival', '2025-02-20', 60),
(690, 1, 'Great service', '2025-02-20', 45),
(636, 1, 'Late arrival', '2025-02-20', 55),
(15, 3, 'Late arrival', '2025-02-20', 65),
(428, 5, 'Very crowded', '2025-02-20', 70),
(476, 4, 'Great service', '2025-02-20', 80),
(298, 4, 'Needs improvement', '2025-02-20', 90),
(557, 2, 'Great service', '2025-02-20', 85),
(94, 3, 'Great service', '2025-02-20', 75),
-- Continue for other rows
(6, 5, 'Very crowded', '2025-02-20', 50);

-- Step 3: Turn off IDENTITY_INSERT
SET IDENTITY_INSERT passenger_feedback OFF;
