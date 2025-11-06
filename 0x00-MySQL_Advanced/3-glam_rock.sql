-- script that lists all bands with Glam rock as main style
-- ranking is done by longevity(use 2022 to calculate this)
SELECT band_name, COALESCE(split, '2022') - formed AS lifespan
    FROM metal_bands
    WHERE style like '%Glam rock%'
    ORDER BY lifespan
    DESC;
