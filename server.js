const express = require('express');
const path = require('path');

const app = express();
const port = 80; // Port to run the server on

// Serve static files (your HTML page and TensorFlow model)
app.use(express.static(path.join(__dirname, '/')));

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
