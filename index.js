const express = require('express');
const app = express();

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.send('A unicorn is approaching');
});

app.listen(3000, () => console.log('Awesome Docker is listening on the published port ..!'));
