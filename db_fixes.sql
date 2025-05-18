-- Update Records in Topping Table
-- UPDATE Topping
-- SET date_released = '2024-02-01'
-- WHERE topping_id = 3;

-- Edits to Topping Table
-- ALTER TABLE Topping
-- DROP COLUMN category,
-- MODIFY COLUMN topping_name 
--     ENUM('brown sugar boba', 'lychee jelly', 'honey boba')
--     NOT NULL;

-- Edits to Product Table
-- ALTER TABLE Product
-- MODIFY category 
--     ENUM('MT', 'FT', 'T', 'Temp') 
--     NOT NULL;

-- Product Table Edit: Add date_stopped col
-- ALTER TABLE Product
-- ADD COLUMN date_stopped DATE NULL;

-- Changing Customer Table to Location. 
-- Customer Info can have its own DB
-- Update Sales to accomodate for change

-- DROP TABLE Sales;
-- DROP TABLE Customer;

-- CREATE TABLE Loc (
--     loc_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
--     location_name VARCHAR(50),
--     city VARCHAR(50),
--     state_code VARCHAR(2)
-- );

-- CREATE TABLE Sales(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     sale_date DATETIME,
--     -- Product
--     product_id INT,
--     quantity INT DEFAULT 1,
--     product_unit_price DECIMAL(10, 2),
--     -- Topping
--     topping_id INT,
--     topping_quantity INT,
--     topping_unit_price DECIMAL(10, 2),
--     -- Location
--     loc_id INT,
--     -- Promotion
--     promotion_id INT NULL,
--     discount_percentage INT DEFAULT 0,
--     sweetness ENUM("0", "25", "50", "75", "100") NOT NULL DEFAULT "100",
--     ice_level ENUM('no ice', 'less ice', 'regular', 'extra ice') DEFAULT 'regular',
--     FOREIGN KEY (loc_id) REFERENCES Loc(loc_id),
--     FOREIGN KEY (product_id) REFERENCES Product(product_id),
--     FOREIGN KEY (topping_id) REFERENCES Topping(topping_id),
--     FOREIGN KEY (promotion_id) REFERENCES Promotion(promotion_id)
-- );

-- Fix record in loc
UPDATE Loc
SET location_name = "Irvine",
    city = "Irvine",
    state_code = "CA"
WHERE loc_id = 1;




