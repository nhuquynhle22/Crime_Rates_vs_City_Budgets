SELECT COUNT(crime_rates.index) as crime_count, state_location
FROM crime_rates
WHERE date_year = 2017 AND state_location in ('AL', 'CA','CO',
											 'FL', 'GA', 'IL',
											 'MN', 'NV', 'NY',
											 'NH', 'PA', 'WA')
GROUP BY state_location
ORDER BY crime_count desc;
