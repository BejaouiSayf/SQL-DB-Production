USE production ;

-- Each product also belongs a category specified by the category_id column. Also, each category may have zero or many products.

ALTER TABLE `products`
ADD CONSTRAINT `fk_products_category`
  FOREIGN KEY (`category_id`)
  REFERENCES `categories` (`categories_id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE

-- Each product belongs to a brand specified by the brand_id column. Hence, a brand may have zero or many products.

ALTER TABLE `products`
ADD CONSTRAINT `fk_products_brand`
  FOREIGN KEY (`category_id`)
  REFERENCES `categories` (`categories_id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE
