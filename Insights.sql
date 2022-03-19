-- Queries for the main visuals on Power BI

-- Get total sum of donations made by gender excluding those who never donated
SELECT 
	gender,
    SUM(donation) AS sum_of_donations
FROM donation_data
JOIN donor_data
	USING(id)
WHERE donation_frequency <> 'Never'
GROUP BY gender
ORDER BY  SUM(donation);

-- Get the total amount of donors per gender excluding the ones who did not donate
SELECT
	gender,
    COUNT(*) AS donors_by_gender
FROM donation_data
JOIN donor_data
	USING(id)
WHERE donation_frequency <> 'Never'
GROUP BY gender
ORDER BY COUNT(*) DESC;

-- Get the total donations made per donation frequency
SELECT 
	donation_frequency,
    SUM(donation) AS sum_of_donations
FROM donation_data dnd
JOIN donor_data drd
ON dnd.id = drd.id
GROUP BY donation_frequency
ORDER BY  SUM(donation) DESC;

-- Get the amount of donors per donation frequency
SELECT 
	donation_frequency,
    COUNT(*) AS count_of_donors
FROM donation_data dnd
JOIN donor_data drd
ON dnd.id = drd.id
GROUP BY donation_frequency
ORDER BY COUNT(*) DESC;

-- Get the total sum of donations made per job field excluding those who never donated
SELECT
	job_field,
    SUM(donation) AS sum_of_donation
FROM donation_data
JOIN donor_data
	USING(id)
WHERE donation_frequency <> 'Never'
GROUP BY job_field
ORDER BY SUM(donation) DESC;

-- Get the top 5 states by sum of donation excluding donation frequency Never
SELECT
	state,
    SUM(donation) AS sum_of_donation
FROM donation_data
JOIN donor_data
	USING(id)
WHERE donation_frequency <> 'Never'
GROUP BY state
ORDER BY  SUM(donation) DESC
LIMIT 5;

-- Get the top 5 states by sum of donation excluding donation frequency Never
SELECT
	state,
    SUM(donation) AS sum_of_donation
FROM donation_data
JOIN donor_data
	USING(id)
WHERE donation_frequency <> 'Never'
GROUP BY state
ORDER BY  SUM(donation)
LIMIT 5;