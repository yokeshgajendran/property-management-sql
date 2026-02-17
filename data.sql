INSERT INTO agents (first_name, last_name, email)
VALUES
   ('Max', 'Müller', 'max.muller@berealty.de'),
   ('Anna', 'Schmidt', 'anna.schmidt@berealty.de'),
   ('Tom', 'Fischer', 'tom.fischer@berealty.de'),
   ('Sophia', 'Koch', 'sophia.koch@berealty.de'),
   ('David', 'Krause', 'david.krause@berealty.de'),
   ('Lara', 'Weber', 'lara.weber@berealty.de'),
   ('John', 'Doe', 'john.doe@berealty.de'),
   ('Julia', 'Becker', 'julia.becker@berealty.de'),
   ('Martin', 'Lehmann', 'martin.lehmann@berealty.de'),
   ('Eva', 'Schulz', 'eva.schulz@berealty.de');

INSERT INTO properties (property_type, address, postal_code, price_in_euro, size_in_sqft, year_built, status, agent_id)
VALUES
   ('Apartment', 'Fake Street 100, Berlin', '00001', 400000, 850, 1995, 'available', 1),
   ('House', 'Nowhere Ave 200, Berlin', '00002', 750000, 1800, 2005, 'sold', 2),
   ('Apartment', 'False Blvd 77, Berlin', '00003', 450000, 920, 1998, 'under_contract', 1),
   ('Villa', 'Imaginary Road 75, Berlin', '00004', 1200000, 3500, 2015, 'available', 3),
   ('Townhouse', 'Nonexistent Lane 89, Berlin', '00005', 680000, 1500, 2012, 'sold', 4),
   ('Apartment', 'Madeup St 45, Berlin', '00006', 380000, 880, 2001, 'pending', 5),
   ('Apartment', 'Fictional Blvd 150, Berlin', '00007', 470000, 960, 2008, 'available', 6),
   ('House', 'Mythical Str 100, Berlin', '00008', 850000, 1950, 2010, 'under_contract', 7),
   ('Apartment', 'Unreal Avenue 200, Berlin', '00009', 420000, 890, 2012, 'available', 8),
   ('Townhouse', 'Dreamland St 300, Berlin', '00010', 630000, 1300, 2009, 'sold', 9),
   ('Apartment', 'Fantasy Dr 50, Berlin', '00011', 350000, 850, 2006, 'available', 10),
   ('House', 'Fabled Pl 1, Berlin', '00012', 950000, 2100, 2014, 'available', 2);


INSERT INTO clients (first_name, last_name, email, preferred_property_type, budget_min, budget_max, agent_id)
VALUES
   ('Michael', 'Klein', 'michael.klein@example.com', 'Apartment', 300000, 500000, 1),
   ('Lisa', 'Wolf', 'lisa.wolf@example.com', 'House', 500000, 800000, 2),
   ('Robert', 'Zimmermann', 'robert.zimmermann@example.com', 'Apartment', 250000, 450000, 1),
   ('Katrin', 'Meier', 'katrin.meier@example.com', 'Villa', 1000000, 1500000, 3),
   ('Tobias', 'Franz', 'tobias.franz@example.com', 'Townhouse', 600000, 850000, 4),
   ('Sandra', 'Walter', 'sandra.walter@example.com', 'Apartment', 300000, 450000, 5),
   ('Johannes', 'Maier', 'johannes.maier@example.com', 'Apartment', 400000, 550000, 6),
   ('Natalie', 'Bauer', 'natalie.bauer@example.com', 'House', 700000, 900000, 7),
   ('Felix', 'Hoffmann', 'felix.hoffmann@example.com', 'Apartment', 350000, 600000, 8),
   ('Elena', 'Hartmann', 'elena.hartmann@example.com', 'Townhouse', 550000, 750000, 9);


INSERT INTO transactions (transaction_date, transaction_amount, payment_status, payment_method, property_id, client_id, agent_id)
VALUES
   ('2024-09-15', 500000, 'completed', 'bank_transfer', 1, 1, 1),
   ('2024-09-20', 750000, 'completed', 'cash', 2, 2, 2),
   ('2024-09-25', 450000, 'pending', 'bank_transfer', 3, 3, 1),
   ('2024-09-30', 1500000, 'completed', 'cash', 4, 4, 3),
   ('2024-10-01', 850000, 'completed', 'bank_transfer', 5, 5, 4),
   ('2024-10-05', 450000, 'failed', 'bank_transfer', 6, 6, 5),
   ('2024-10-07', 500000, 'completed', 'cash', 7, 7, 6),
   ('2024-10-09', 900000, 'completed', 'bank_transfer', 8, 8, 7),
   ('2024-10-10', 600000, 'completed', 'bank_transfer', 9, 9, 8),
   ('2024-10-12', 700000, 'pending', 'cash', 10, 10, 9),
   ('2024-10-13', 450000, 'completed', 'bank_transfer', 11, 1, 10),
   ('2024-10-14', 700000, 'completed', 'cash', 12, 2, 2);