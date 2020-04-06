const { main } = require('./index');

describe('Test main', () => {
    describe('given a name James', () => {
        it('returns Hello World James!', () => {
            expect(main('James')).toEqual('Hello World James!');
        });
    });
});
