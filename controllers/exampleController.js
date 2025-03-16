const exampleService = require('../services/exampleService');

exports.displayMessage = (req, res) => {
    const message = exampleService.getMessage();
    res.send(message);
};
