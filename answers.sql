-- 1. Drop index IdxPhone from customers table
DROP INDEX IdxPhone ON customers;

-- 2. Create user bob restricted to localhost
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- 3. Grant INSERT privilege on salesDB to bob
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- 4. Change bob's password
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';

-- Apply privilege changes
FLUSH PRIVILEGES;
