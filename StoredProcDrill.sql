
GO
CREATE PROCEDURE dbo.spSpeciesInfo @City nvarchar(50) = NULL, @AddressLine1 nvarchar(50) = NULL
AS
SELECT
		a1.species_name as 'Name: ', a2.habitat_type as 'Habitat: ', a2.habitat_cost as 'Monthly cost: ',
		a3.nutrition_type as 'Nutrition: ', a3.nutrition_cost as 'Monthly cost: '
		FROM tbl_species a1
		INNER JOIN tbl_habitat a2 ON a2.habitat_id = a1.species_habitat
		INNER JOIN tbl_nutrition a3 ON a3.nutrition_id = a1.species_nutrition
		WHERE species_name = 'ghost bat' AND habitat_type = 'cliff with shaded cave'
	;
GO


