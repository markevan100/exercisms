function Bowling() {
  const framesArr = [[],[],[],[],[],[],[],[],[],[],[],[],[0],[0]];
  let bonus = 0;
  let counter = 0;

  this.roll = (pinsHit) => {
    is_legit(pinsHit)
    if (pinsHit === 10) {
      counter += 0.5
    };
    framesArr[Math.floor(counter)].push(pinsHit);
    counter += 0.5;
  };

  this.score = () => {
    framesArr.forEach((frame, index) => {
      // If spare then add next frames 0 index
      if (frame.length === 2 && (frame[0] + frame[1] === 10 && index != 10)) {
        bonus += framesArr[index + 1][0];
      };
      // If strike then add next two legitamte rolls. nextBonus() checks
      if (frame[0] === 10 && index != 10) {
        bonus += framesArr[index + 1][0] + nextBonus(framesArr[index + 1][1], framesArr[index + 2][0]);
      };
    });
    const framesArrSlizzled = framesArr.slice(0,10);
    let x = (framesArrSlizzled.flat().reduce(function(total, sum) { return total += sum }) + bonus);
    return x;
  };

};

function nextBonus(param, param2) {
  if (param === undefined) {
    return param2;
  } else {
    return param;
  };
};

function is_legit(param) {
  if (param < 0) throw Error('Negative roll is invalid')
};3

//
// debugger;
// const rolls = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 7, 3];
// const bowling = new Bowling();
// rolls.forEach((roll) => { bowling.roll(roll); });
// bowling.score();

module.exports = Bowling;

// let number = 0
// if (framesArr[10][0] != undefined) number + framesArr[10][0];
// return (framesArr.flat().reduce(function(total, sum) { return total += sum }) - number)
