// const toRna = (input) => {
//   let ans_array = [];
//   let array = input.split("");
//   for (let i = 0; i < array.length; i++) {
//   switch (array[i]) {
//     case "C":
//       ans_array.push("G");
//       break;
//     case "G":
//       ans_array.push("C");
//       break;
//     case "A":
//       ans_array.push("U");
//       break;
//     case "T":
//       ans_array.push("A");
//       break;
//     case "":
//       ans_array.push("");
//     default:
//       throw Error('Invalid input DNA.');
//   }};
//   return ans_array.join("")
// };
//
//   export { toRna };
const secretHandshake = (num) => {
  const binstring = dec2bin(num);
  const ans_array = [];

  if ((binstring[binstring.length - 1] != '1') && (binstring[binstring.length - 1] != '0')) {
    throw new Error('Handshake must be a number');
  };
  if (binstring[binstring.length - 1] === '1') {
    ans_array.push('wink')
  };
  if (binstring[binstring.length - 2] === '1') {
    ans_array.push('double blink')
  };
  if (binstring[binstring.length - 3] === '1') {
    ans_array.push('close your eyes')
  };
  if (binstring[binstring.length - 4] === '1') {
    ans_array.push('jump')
  };
  if (binstring[binstring.length - 5] === '1') {
    ans_array.reverse()
  };
  return ans_array;
};

function dec2bin(dec){
  return (dec >>> 0).toString(2);
};

export { secretHandshake };
