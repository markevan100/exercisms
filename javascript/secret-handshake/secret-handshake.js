const secretHandshake = (num) => {
  const binstring = dec2bin(num);
  const ans_array = [];

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
  if (ans_array.length > 0) {
     return ans_array
  } else {
    throw Error('Handshake must be a number')
  }
};

function dec2bin(dec){
  return (dec >>> 0).toString(2);
};

export { secretHandshake };
