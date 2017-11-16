//
// This is only a SKELETON file for the "Leap" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Year = function (input) {
  this.yearVal = input;
};

Year.prototype.isLeap = function () {
  if (this.yearVal % 400 === 0) return true;
  return (this.yearVal % 4 === 0 && this.yearVal % 100 !== 0);
};

module.exports = Year;
