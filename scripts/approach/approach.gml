function approach (val1,val2, amount) {
return val1 < val2 ? min(val1 + amount, val2) : max(val1 - amount, val2);
}