class Stack {
    constructor() {
        this.top = -1;
        this.items = {};
    }
    get peek() {
        return this.items[this.top];
    }
    push(element) {
        this.top++;
        this.items[this.top] = element;
    }
    pop() {
        if (this.top < 0) {
            return undefined;
        }
        const top = this.items[this.top];
        delete this.items[this.top];
        this.top--;
        return top;
    }
}



// Descripe the ting we are testing
describe(`testing a Stack`, () => {
    let stack;

    // Reinitialize the stack before each test
    beforeEach(() => {
        stack = new Stack();
    });
    
    // test() and it() are the same thing

    // .toBe will test the actual value to the correct value

    it('is created empty', () => {

        expect(stack.top).toBe(-1);

        expect(stack.items).toEqual({});
    })

    it('can push to the top', () => {

        stack.push('a');

        expect(stack.top).toBe(0);
        expect(stack.peek).toBe('a');
    })

    it('can pop from the top', () => {
            
        stack.push('a');
        stack.push('b');

        expect(stack.top).toBe(1);
        expect(stack.peek).toBe('b');

        stack.pop();

        expect(stack.top).toBe(0);
        expect(stack.peek).toBe('a');
    })

});