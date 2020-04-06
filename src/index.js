const main = (name) => {
    if (!name) {
        return 'Empty Name!';
    }
    return `Hello World ${name}!`;
};

module.exports = {
    main,
};