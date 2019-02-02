 function Change(){

  this.calculate = (coins, amount) => {

    let reverse = coins.reverse()
    const superArr= [];

    for (var i = 0; i < reverse.length; i++) {
      let shrinkingArr = reverse.slice(i)
      superArr.push(this.potentArr(shrinkingArr, amount))
    }

    var shortest = superArr.reduce(function(p,c) {return p.length>c.length?c:p;},{length:Infinity});
    return shortest;
  };

  this.potentArr = (reverse, amount) => {
    const original = amount
    const ansArr = []
    reverse.map( e => {
      let quotient = Math.floor(amount/e);
      let remainder = amount % e;
      // In here, write code that will make sure that the remainder is
      // always still divisible by the smallest coin. If it isn't, subtract
      // one from the quotient and try again until it is. Then, proceed.

      for (let i = 0; i < quotient; i++) {
        if (e > remainder) {
          ansArr.push(e)
          amount -= e
        }
      }
    });
    if (original === ansArr.reduce((a,b) => { return a + b})) {
      return ansArr.reverse();
    }
    else {
      // figure out a better way to deal with this else
      return [1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
    }

  }


};

export {Change}
