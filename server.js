const express = require('express');
const exampleRoute = require('./routes/exampleRoute');

const app = express();
app.use(express.json());

app.use('/', exampleRoute);

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
