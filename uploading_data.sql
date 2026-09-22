SELECT current_database();

--COLORS
CREATE TABLE staging.colors (
	id integer,
    name varchar,
    rgb varchar,
    is_trans boolean
);

SELECT * 
FROM staging.colors;

COPY staging.colors 
FROM 'G:/My Drive/Training/Analytics Engineering/colors.csv' 
WITH (
    FORMAT CSV, 
    HEADER TRUE
);

--INVENTORIES
CREATE TABLE staging.inventories (
	id integer,
    version integer,
    set_num varchar
);

SELECT * 
FROM staging.inventories;

COPY staging.inventories
FROM 'G:/My Drive/Training/Analytics Engineering/inventories.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);
--INVENTORY_PARTS
CREATE TABLE staging.inventory_parts (
    inventory_id integer,
    part_num varchar,
    color_id integer,
    quantity integer,
    is_spare boolean
);

select *
from staging.inventory_parts;

COPY staging.inventory_parts
FROM 'G:/My Drive/Training/Analytics Engineering/inventory_parts.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

--INVENTORY_SETS
CREATE TABLE staging.inventory_sets (
    inventory_id integer,
    set_num varchar,
    quantity integer
);

SELECT *
FROM staging.inventory_sets;

COPY staging.inventory_sets
FROM 'G:/My Drive/Training/Analytics Engineering/inventory_sets.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

--PARTS
CREATE TABLE staging.parts (
    part_num varchar,
    name varchar,
    part_cat_id integer
);

SELECT *
FROM staging.parts;

COPY staging.parts
FROM 'G:/My Drive/Training/Analytics Engineering/parts.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

--PART_CATEGORIES
CREATE TABLE staging.part_categories (
    id integer,
    name varchar
);

SELECT *
FROM staging.part_categories;

COPY staging.part_categories
FROM 'G:/My Drive/Training/Analytics Engineering/part_categories.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

--SETS
CREATE TABLE staging.sets (
    set_num varchar,
    name varchar,
    year integer,
    theme_id integer,
    num_parts integer
);

SELECT *
FROM staging.sets;

COPY staging.sets
FROM 'G:/My Drive/Training/Analytics Engineering/sets.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

--THEMES
CREATE TABLE staging.themes (
    id integer,
    name varchar,
    parent_id integer
);

SELECT *
FROM staging.themes;

COPY staging.themes
FROM 'G:/My Drive/Training/Analytics Engineering/themes.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);