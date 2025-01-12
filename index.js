// let check = "welcome to NodeJS";
// console.log(check);

import express from 'express';
const app = express();
app.get('/', (req, res) => {     res.send('Hello World'); });
app.get('/about', (req, res) => {     res.send('About Page'); });   
const port = 3000;
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});