-- Dynamically Insert Values into Boba Sales DB using SET

-- Topping: should only have 3 rows right now
-- No id because it is auto increment
-- SET @topping_name = "lychee jelly";
-- SET @price = .75;
-- SET @date_released = '2/1/24';
-- SET @limited = 0;

-- INSERT INTO Topping(
--     topping_name,
--     price,
--     date_released,
--     limited
-- )
-- VALUES(
--     @topping_name,
--     @price,
--     @date_released,
--     @limited);


-- Promotion
-- 3 promotions so far: grand opening (10%), 1 month (10%), 
--  04/30 national boba day (20% off MT)
-- SET @promotion_name = "National Boba Day";
-- SET @startdate = '2024-04-30';
-- SET @enddate = '2024-04-30';
-- SET @promotion_info = 
--     "20% off all milk teas";

-- INSERT INTO Promotion(
--     promotion_name,
--     startdate,
--     enddate,
--     promotion_info
-- )
-- VALUES(
--     @promotion_name,
--     @startdate,
--     @enddate,
--     @promotion_info);

-- Product
-- 4 Categories: MT, FT, T, Temp
-- MT: Black MT 5, Green MT 5, Mango GMT 5.5
-- FT: Mango GT 5, Strawberry GT 5
-- T: Black 4, Green 4
-- Temp: White Peach GT 6 (3/1-3/8)
-- SET @product_name = "White Peach GT";
-- SET @price = 6;
-- SET @date_released = '2024-03-01';
-- SET @limited = 1;
-- SET @category = "Temp";
-- SET @date_stopped = '2024-03-08';

-- INSERT INTO Product(
--     product_name,
--     price,
--     date_released,
--     limited,
--     category,
--     date_stopped
-- )
-- VALUES(
--     @product_name,
--     @price,
--     @date_released,
--     @limited,
--     @category,
--     @date_stopped
-- );

-- Location: 1 Location Only
SET @location_name = "Irvine";
SET @city = 'Irvine';
SET @state_code = 'CA';

INSERT INTO Loc(
    location_name,
    city,
    state_code
)
VALUES(
    @location_name,
    @city,
    @state_code
);
