// Node.js with MySQL
// Node.js and the mysql package to read a JSON file and insert data into a MySQL database
const fs = require('fs');
const mysql = require('mysql');

// Read JSON file
const data = JSON.parse(fs.readFileSync('data.json', 'utf8'));

// Create database connection
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'mydatabase'
});

// Connect to database
connection.connect();

// Create table (if it doesn't exist)
const createTableQuery = `
  CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
`;
connection.query(createTableQuery, (err, result) => {
  if (err) throw err;

  // Insert data
  const insertQuery = 'INSERT INTO users (name, age) VALUES (?, ?)';
  data.forEach(item => {
    connection.query(insertQuery, [item.name, item.age], (err, result) => {
      if (err) throw err;
    });
  });
});

// Close database connection
connection.end();