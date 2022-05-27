// Regex

// Useful tools: https://regexr.com

// Regex is defined in between two /
const regex = / /


// match exact string. by default it will only find the first match.
// g flag means global and will search for all matches.
const regex2 = /bob/g

// | = logical OR
const regex3 = /bob|billy/

// () = group and can be used to capture substrings

// ? allow 0 or 1 occurance
const regex4 = /bob?/

// * allow 0 or more occurance
const regex5 = /bob*/

// + allow 1 or more occurance
const regex6 = /bob+/

// {} exactly n occurance or {min,max}
const regex7 = /bob{2}/

// \ escape special character
const regex8 = /\d/

// [] character sets
const regex9 = /[a-z]/

// ^ negation, do the opposite, so in this case it will match all characters except a-z
const regex10 = /[^a-z]/