
/**
 * @description Linear Feedback Shift Register
 * @summary The feedback path is a XOR of the output bit and one or more input bits. The feedback path is usually a polynomial of the input bits. The LFSR is used in cryptography and in the generation of pseudo-random numbers.
 * @see https://en.wikipedia.org/wiki/Linear-feedback_shift_register
 * @param {number} state - The initial state of the register
 * @param {number} steps - The number of steps to take
 * @returns {number} The final state of the register
 * @example
 * lfsr(0b1001, 20) // 0b1001
 * lfsr(0b1001, 21) // 0b0011
 * lfsr(0b1001, 22) // 0b0110
 * lfsr(0b1001, 23) // 0b1100
 * lfsr(0b1001, 24) // 0b1001
 * lfsr(0b1001, 25) // 0b0011
 * lfsr(0b1001, 26) // 0b0110
 * lfsr(0b1001, 27) // 0b1100
 * lfsr(0b1001, 28) // 0b1001
 * lfsr(0b1001, 29) // 0b0011
 * lfsr(0b1001, 30) // 0b0110
 */
function lfsr(state, steps) {

  let newbit = 0;
  let newstate = 0;
  for (let i = 0; i < steps; i++) {
    newbit = (state >> 0) & 1 ^ (state >> 2) & 1;
    newstate = (state >> 1) | (newbit << 3);
    state = newstate;
  }
  return state;
}
console.log(lfsr(0b1001, 20));
