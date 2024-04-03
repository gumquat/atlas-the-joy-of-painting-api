const express = require('express');
const app = express();
const { Pool } = require('pg');
// const cors = require('cors');
// app.use(cors()); //this adds the cors middleware to all routes below
const port = 3000;

// Middleware
app.use(express.json());
// app.use(express.urlencoded({ extended: true }));

// PostgreSQL connection pool
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'thejoyofpainting',
  password: 'Password123',
  port: 5432, // Default PostgreSQL port
});

// Get table schema to find out the correct column name for episodes table <--
async function getTableSchema() {
  try {
    const client = await pool.connect();
    const result = await client.query(
      `SELECT column_name FROM information_schema.columns WHERE table_name = 'episodes'`
    );
    client.release();
    console.log(result.rows);
  } catch (err) {
    console.error('Error getting table schema', err);
  }
}
getTableSchema();

app.get('/episodes', async (req, res) => {
  try {
    const queryResult = await pool.query('SELECT * FROM episodes');
    res.json(queryResult.rows);
  } catch (error) {
    console.error('Error executing query', error);
    res.status(500).json({ message: 'Internal Server Error' });
  }
});

// // // Route to COLORS // // // 
app.get('/colors', async (req, res) => {
  try {
    const queryResult = await pool.query('SELECT * FROM colors')
    
    res.json(queryResult.rows);
  } catch (error) {
    console.error('Error executing query', error);
    res.status(500).json({ message: 'Internal Server Error' });
  }
});

// // // Route to SUBJECTS // // //
app.get('/subjects', async (req, res) => {
  try {
    const queryResult = await pool.query('SELECT * FROM subjects')

    res.json(queryResult.rows);
  } catch (error) {
    console.error('Error executing query', error);
    res.status(500).json({ message: 'Internal Server Error' });
  }
});

// // // Route to MONTHS // // //
app.get('/episodes/airMonth/:month', async (req, res) => {
  const month = req.params.month;

  try {
    const query = `
      SELECT *
      FROM episodes
      WHERE air_month = $1;
    `;
    const values = [month];

    const { rows } = await pool.query(query, values);

    if (rows.length === 0) {
      return res.status(404).json({ error: 'No episodes found for the specified month' });
    }

    res.json(rows);
  } catch (err) {
    console.error('Error executing query', err.stack);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// // // Route to get episodes by month // // //
// app.get('/episodes/:month_name', async (req, res) => {
//   const month_name = req.params.month_name;
//   try {
//     // Execute a query to fetch data from the database
//     const query = {
//       text: `SELECT * FROM episodes WHERE episodes.airMonth = $1;`,
//       values: [month_name],
//     };
//     // Execute the query
//     const result = await pool.query(query);

//     // Send the response
//     res.json(result.rows);
//   } catch (error) {
//     console.error('Error executing query', error);
//     res.status(500).json({ message: 'Internal Server Error' });
//   }
// });

// Start the server
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});