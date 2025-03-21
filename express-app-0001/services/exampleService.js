const ExampleModel = require('../models/exampleModel');

const exampleData = [
    new ExampleModel(1, 'Item One'),
    new ExampleModel(2, 'Item Two')
];

exports.getExamples = () => {
    return exampleData;
};
