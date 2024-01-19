const express = require('express');
const app = express();
const port = 3001;
const db = require('./db');

app.use(express.json());

app.get('/', async (req, res) => {
  try {
    const [rows, fields] = await db.execute('SELECT * FROM Admin');
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Error en el servidor' });
  }
});

app.listen(port, () => {
  console.log(`Servidor escuchando en http://localhost:${port}`);
});
