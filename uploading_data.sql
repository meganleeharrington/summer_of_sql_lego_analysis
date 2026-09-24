--COLORS
CREATE TABLE staging.colors (
	id integer,
    name varchar,
    rgb varchar,
    is_trans boolean
);

COPY staging.colors 
FROM 'G:/My Drive/Training/Analytics Engineering/colors.csv' 
WITH (
    FORMAT CSV, 
    HEADER TRUE
);

SELECT * 
FROM staging.colors;



--INVENTORIES
CREATE TABLE staging.inventories (
	id integer,
    version integer,
    set_num varchar
);

COPY staging.inventories
FROM 'G:/My Drive/Training/Analytics Engineering/inventories.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

SELECT * 
FROM staging.inventories;



--INVENTORY_PARTS
CREATE TABLE staging.inventory_parts (
    inventory_id integer,
    part_num varchar,
    color_id integer,
    quantity integer,
    is_spare boolean
);

COPY staging.inventory_parts
FROM 'G:/My Drive/Training/Analytics Engineering/inventory_parts.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

select *
from staging.inventory_parts;



--INVENTORY_SETS
CREATE TABLE staging.inventory_sets (
    inventory_id integer,
    set_num varchar,
    quantity integer
);

COPY staging.inventory_sets
FROM 'G:/My Drive/Training/Analytics Engineering/inventory_sets.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

SELECT *
FROM staging.inventory_sets;



--PARTS
CREATE TABLE staging.parts (
    part_num varchar,
    name varchar,
    part_cat_id integer
);

COPY staging.parts
FROM 'G:/My Drive/Training/Analytics Engineering/parts.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

SELECT *
FROM staging.parts;



--PART_CATEGORIES
CREATE TABLE staging.part_categories (
    id integer,
    name varchar
);

COPY staging.part_categories
FROM 'G:/My Drive/Training/Analytics Engineering/part_categories.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

SELECT *
FROM staging.part_categories;



--SETS
CREATE TABLE staging.sets (
    set_num varchar,
    name varchar,
    year integer,
    theme_id integer,
    num_parts integer
);

COPY staging.sets
FROM 'G:/My Drive/Training/Analytics Engineering/sets.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

SELECT *
FROM staging.sets;



--THEMES
CREATE TABLE staging.themes (
    id integer,
    name varchar,
    parent_id integer
);

COPY staging.themes
FROM 'G:/My Drive/Training/Analytics Engineering/themes.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

SELECT *
FROM staging.themes;
