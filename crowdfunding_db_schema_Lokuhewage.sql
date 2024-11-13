-- Create Category table
CREATE TABLE Category (
    category_id VARCHAR NOT NULL,
    category VARCHAR NOT NULL,
    PRIMARY KEY (category_id)
);

-- Create Sub_Category table
CREATE TABLE Sub_Category (
    subcategory_id VARCHAR NOT NULL,
    subcategory VARCHAR NOT NULL,
    PRIMARY KEY (subcategory_id)
);

-- Create Contacts table
CREATE TABLE Contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    PRIMARY KEY (contact_id)
);

-- Create Campaign table
CREATE TABLE Campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal NUMERIC NOT NULL,
    pledged NUMERIC NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Sub_Category(subcategory_id),
    PRIMARY KEY (cf_id)
);
