-- Create schema if it does not exist
CREATE SCHEMA IF NOT EXISTS crowdfunding_schema;

-- Create categories table
CREATE TABLE crowdfunding_schema.categories (
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(100) NOT NULL
);

-- Create subcategories table
CREATE TABLE crowdfunding_schema.subcategories (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(100) NOT NULL
);

-- Create contacts table
CREATE TABLE crowdfunding_schema.contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- Create campaign table with foreign key constraints
CREATE TABLE crowdfunding_schema.campaign (
    cf_id SERIAL PRIMARY KEY,                
    contact_id INT NOT NULL,                 
    company_name VARCHAR(255) NOT NULL,      
    description TEXT NOT NULL,              
    goal FLOAT NOT NULL,                     
    pledged FLOAT NOT NULL,                  
    outcome VARCHAR(50) NOT NULL,            
    backers_count INT NOT NULL,              
    country VARCHAR(100) NOT NULL,          
    currency VARCHAR(10) NOT NULL,           
    launch_date DATE NOT NULL,              
    end_date DATE NOT NULL,                  
    category_id VARCHAR(50),                 
    subcategory_id VARCHAR(50),              

    -- Foreign key constraints referencing tables in the same schema
    FOREIGN KEY (contact_id) REFERENCES crowdfunding_schema.contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES crowdfunding_schema.categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES crowdfunding_schema.subcategories(subcategory_id)
);