function Bowling() {
  const framesArr = [[],[],[],[],[],[],[],[],[],[],[]];
  let bonus = 0;
  let counter = 0;
  
  this.roll = (pinsHit) => {
    if (pinsHit === 10) {
      counter += 0.5
    };
    if (framesArr[10][0] === 10) {
      bonus += 10;
    } else {
      framesArr[Math.floor(counter)].push(pinsHit);
    }
    counter += 0.5;
  };

  this.score = () => {
    framesArr.forEach((frame, index) => {
      if (frame.length === 2 && (frame[0] + frame[1] === 10) && index != 10) {
        framesArr[index].push(framesArr[index + 1][0]);
      };
      if (frame[0] === 10) {
        framesArr[index].push(framesArr[index + 1][0]);
        if (framesArr[index + 1][1] === undefined) {
          if (index < 9) framesArr[index].push(framesArr[index + 2][0]);
        } else {
          framesArr[index].push(framesArr[index + 1][1]);
        }
      };
    });

    let number = 0
    if (framesArr[9].length === 3 && (framesArr[9][0] + framesArr[9][1] === 10)) number = framesArr[10][0];
    if (framesArr[9][0] === 10) number = framesArr[10][0] + framesArr[10][1];

    return (framesArr.flat().reduce(function(total, sum) { return total += sum }) - number + bonus)
  };
};

// helper functions

function

//
const rolls = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 10, 10];
const bowling = new Bowling();
debugger;
rolls.forEach((roll) => { bowling.roll(roll); });
bowling.score();

module.exports = Bowling;

// let number = 0
// if (framesArr[10][0] != undefined) number + framesArr[10][0];
// return (framesArr.flat().reduce(function(total, sum) { return total += sum }) - number)
