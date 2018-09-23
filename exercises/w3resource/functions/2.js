#!/usr/bin/env node

// Write a JavaScript function that checks whether a passed string is palindrome or not?
// A palindrome is word, phrase, or sequence that reads the same backward as forward, e.g., madam or nurses run.

/* IS PALINDROME */

const whitespaceRe = /\s*/g; // Regex used for matching whitespaces

function isPalindrome ( str ) {
  str = str.replace ( whitespaceRe, '' ); // Whitespaces needs to be stripped out, or palindrome phrases like "nurses run" won't be recognized as a palindrome
  const reversed = str.split ( '' ).reverse ().join ( '' );
  return str === reversed;
}

/* TEST */

const assert = require ( 'assert' );

assert.strictEqual ( isPalindrome ( 'madam' ), true, '"madam" is palindrome' );
assert.strictEqual ( isPalindrome ( 'nurses run' ), true, '"nurses run" is palindrome' );
assert.strictEqual ( isPalindrome ( 'foo bar' ), false, '"foo bar" is not palindrome' );
