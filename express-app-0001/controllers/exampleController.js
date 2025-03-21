const ExampleModel = require('../models/exampleModel');
const exampleService = require('../services/exampleService');

exports.getExample = (req, res) => {
    const examples = exampleService.getExamples();
    res.json(examples);
};
