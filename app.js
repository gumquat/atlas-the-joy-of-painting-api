const express = require('express');
const app = express();
const { Pool } = require('pg');
const cors = require('cors');
// app.use(cors()); //this adds the cors middleware to all routes below
const port = 3000;

// Middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// PostgreSQL connection pool
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'thejoyofpainting',
  password: 'Password123',
  port: 5432, // Default PostgreSQL port
});


// // // // // Query to get all episodes // // // // //
const getAllEpisodesQuery = `
  SELECT *
  FROM episodes
`;

// Middleware to handle JSON responses
app.use(express.json());

// Route to get all episodes
app.get('/episodes', async (req, res) => {
  try {
    const client = await pool.connect();
    const result = await client.query(getAllEpisodesQuery);
    const episodes = result.rows;
    res.json(episodes);
    client.release();
  } catch (err) {
    console.error('Error executing query', err);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// // // // // Route to get episodes by month // // // // //
app.get('/episodes/:month', (req, res) => {
  const month = req.params.month;
  const query = `SELECT * FROM episodes WHERE airMonth LIKE '${month}%'`;

  db.all(query, (err, rows) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }

    res.json({ episodes: rows });
  });
});

// // // // // Start the server // // // // //
app.listen(port, () => {
  console.log(`Server is listening at http://localhost:${port}`);
});