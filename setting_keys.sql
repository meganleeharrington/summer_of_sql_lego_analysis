--SET PRIMARY KEYS
ALTER TABLE staging.inventories ADD PRIMARY KEY (id);
ALTER TABLE staging.sets ADD PRIMARY KEY (set_num);
ALTER TABLE staging.themes ADD PRIMARY KEY (id);
ALTER TABLE staging.part_categories ADD PRIMARY KEY (id);
ALTER TABLE staging.colors ADD PRIMARY KEY (id);
ALTER TABLE staging.parts ADD PRIMARY KEY (part_num);

--SET FOREIGN KEYS
ALTER TABLE staging.inventory_sets ADD FOREIGN KEY (inventory_id) REFERENCES staging.inventories(id);
ALTER TABLE staging.inventory_sets ADD FOREIGN KEY (set_num) REFERENCES staging.sets(set_num);
ALTER TABLE staging.inventories ADD FOREIGN KEY (set_num) REFERENCES staging.sets(set_num);
ALTER TABLE staging.sets ADD FOREIGN KEY (theme_id) REFERENCES staging.themes(id);
ALTER TABLE staging.inventory_parts ADD FOREIGN KEY (inventory_id) REFERENCES staging.inventories(id);
ALTER TABLE staging.inventory_parts ADD FOREIGN KEY (part_num) REFERENCES staging.parts(part_num);
ALTER TABLE staging.inventory_parts ADD FOREIGN KEY (color_id) REFERENCES staging.colors(id);
ALTER TABLE staging.parts ADD FOREIGN KEY (part_cat_id) REFERENCES staging.part_categories(id);



