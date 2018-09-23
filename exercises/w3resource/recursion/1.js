#!/usr/bin/env node

// Write a JavaScript program to calculate the factorial of a number.
// In mathematics, the factorial of a non-negative integer n, denoted by n!, is the product of all positive integers less than or equal to n.
// For example, 5! = 5 x 4 x 3 x 2 x 1 = 120

/* FACTORIAL */

function factorial ( n ) {
  if ( n === 1 ) return 1;
  return n * factorial ( n - 1 );
}

/* TEST */

const assert = require ( 'assert' );

assert.strictEqual ( factorial ( 10 ), 3628800, '10! is 3628800' );
