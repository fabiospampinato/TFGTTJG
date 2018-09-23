#!/usr/bin/env node

// Write a JavaScript function that reverse a number.
// Example Input = 32243
// Expected Output = 34223

/* REVERSE NUMBER */

function reverseNumber ( n ) {
  return Number ( n.toString ().split ( '' ).reverse ().join ( '' ) );
}

/* TEST */

const assert = require ( 'assert' );

assert.strictEqual ( reverseNumber ( 32243 ), 34223, '32243 reversed is 34223' );
