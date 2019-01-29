function SpaceAge(seconds) {
  this.seconds = seconds;
  this.onEarth = () => {
    var x = 1/(60*60*24*365.25);
    return parseInt((this.seconds * x).toFixed(2))
  };
};



export {SpaceAge};



// x = 4
//
// def multiply(x)
//  x + 3
//  end
