-- Queries for the card visuals on Power BI

-- Get the count of the total number of people who donated
SELECT
	COUNT(*) AS Total_number_of_donors
FROM donation_data
JOIN donor_data
	USING(id)
WHERE donation_frequency <> 'Never';

-- Get the count of the total number of people who did not donate
SELECT
	COUNT(*) AS Total_number_of_donors
FROM donation_data
JOIN donor_data
	USING(id)
WHERE donation_frequency = 'Never';

-- Get the count of the states where donations were made
SELECT
	COUNT(DISTINCT state) AS States_considered
FROM donation_data;

/* Get the total sum of donations made per donation frequency 
excluding the "Never" donation frequency */
SELECT 
	SUM(donation) AS Sum_of_Donations
FROM donation_data
JOIN donor_data
	USING(id)
WHERE donation_frequency <> 'Never';

-- Get the total sum of donations never made
SELECT 
	SUM(donation) AS Sum_of_donations_never_made
FROM donation_data
JOIN donor_data
	USING(id)
WHERE donation_frequency = 'Never';



	

