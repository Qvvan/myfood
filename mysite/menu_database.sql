CREATE TABLE IF NOT EXISTS menu_category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

-- Create the Dish table
CREATE TABLE IF NOT EXISTS menu_dish (
    id SERIAL PRIMARY KEY,
    category_id INTEGER REFERENCES menu_category(id) ON DELETE CASCADE,
    name VARCHAR(200) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(6, 2) NOT NULL,
    image_url VARCHAR(200) NOT NULL DEFAULT 'https://example.com/default_image.jpg'
);

INSERT INTO menu_category (name) VALUES ('Домашняя');
INSERT INTO menu_category (name) VALUES ('Салаты');
INSERT INTO menu_category (name) VALUES ('Супы');
INSERT INTO menu_category (name) VALUES ('Закуски');
INSERT INTO menu_category (name) VALUES ('Десерты');



INSERT INTO menu_dish (category_id, name, description, price, image_url) VALUES
((SELECT id FROM menu_category WHERE name = 'Домашняя'), 'Борщ', 'Лук, капуста, мясо, свёкла', 180.00, 'https://example.com/default_image.jpg'),
((SELECT id FROM menu_category WHERE name = 'Домашняя'), 'Котлета по-киевски', 'Куриное филе, масло, зелень', 250.00, 'https://example.com/default_image.jpg'),
((SELECT id FROM menu_category WHERE name = 'Салаты'), 'Цезарь', 'Куриное филе, салат, сыр, сухарики', 200.00, 'https://example.com/default_image.jpg'),
((SELECT id FROM menu_category WHERE name = 'Салаты'), 'Оливье', 'Картофель, морковь, горошек, майонез', 150.00, 'https://example.com/default_image.jpg'),
((SELECT id FROM menu_category WHERE name = 'Супы'), 'Щи', 'Капуста, картофель, мясо, специи', 170.00, 'https://example.com/default_image.jpg'),
((SELECT id FROM menu_category WHERE name = 'Супы'), 'Грибной суп', 'Грибы, картофель, лук, морковь', 160.00, 'https://example.com/default_image.jpg'),
((SELECT id FROM menu_category WHERE name = 'Закуски'), 'Брускетта', 'Хлеб, помидоры, базилик, чеснок', 100.00, 'https://example.com/default_image.jpg'),
((SELECT id FROM menu_category WHERE name = 'Закуски'), 'Крылышки BBQ', 'Куриные крылышки, соус BBQ', 220.00, 'https://example.com/default_image.jpg'),
((SELECT id FROM menu_category WHERE name = 'Десерты'), 'Чизкейк', 'Сыр, печенье, сливки', 180.00, 'https://example.com/default_image.jpg'),
((SELECT id FROM menu_category WHERE name = 'Десерты'), 'Тирамису', 'Печенье савоярди, сыр маскарпоне, кофе', 200.00, 'https://example.com/default_image.jpg');