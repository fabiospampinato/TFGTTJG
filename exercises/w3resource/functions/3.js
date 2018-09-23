#!/usr/bin/env node

// Write a JavaScript function that generates all combinations of a string. Go to the editor
// Example input = dog
// Expected Output = d,o,g,do,dg,og,od,gd,go,dog,dgo,odg,ogd,god,gdo

/* GET STRING COMBINATIONS */

function uniq ( arr ) {
  return arr.filter ( ( ele, i ) => arr.indexOf ( arr[i] ) === i );
}

function swap ( arr, from, to ) {
  const temp = arr[to];
  arr[to] = arr[from];
  arr[from] = temp;
}

function getArrayPermutations ( arr, n = arr.length ) { //URL: Heap's algorithm https://en.wikipedia.org/wiki/Heap%27s_algorithm
  if ( n === 1 ) return [arr.slice ()];
  const permutations = [];
  for ( let i = 0; i !== n; i++ ) {
    permutations.push ( ...getArrayPermutations ( arr, n - 1 ) );
    swap ( arr, n % 2 ? 0 : i, n - 1 );
  }
  return permutations;
}

function getStringPermutations ( str ) {
  const chars = str.split ( '' );
  return getArrayPermutations ( chars ).map ( permutation => permutation.join ( '' ) );
}

function getStringCombinations ( str ) {
  const combinations = getStringPermutations ( str );
  for ( let i = 0, l = str.length; i < l; i++ ) {
    const subStr = str.split ( '' ).filter ( ( char, index ) => index !== i ).join ( '' );
    combinations.push ( ...getStringCombinations ( subStr ) );
  }
  return uniq ( combinations ); //TODO: This call to `uniq` shouldn't be necessary
}

/* TEST */

const assert = require ( 'assert' );

const combinations = getStringCombinations ( 'dog' ).sort (),
      expectedCombinations = ['d', 'o', 'g', 'do', 'dg', 'og', 'od', 'gd', 'go', 'dog', 'dgo', 'odg', 'ogd', 'god', 'gdo'].sort ();

assert.deepStrictEqual ( combinations, expectedCombinations );
