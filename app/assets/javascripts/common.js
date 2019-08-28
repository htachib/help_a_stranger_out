function findParentBySelector(elm, selector) {
  var all = document.querySelectorAll(selector);

  var cur = elm.parentNode;
  while(cur && !collectionHas(all, cur)) { //keep going up until you find a match
      cur = cur.parentNode; //go up
  }
  return cur; //will return null if not found
}

function collectionHas(a, b) { //helper function (see below)
  for(var i = 0, len = a.length; i < len; i ++) {
      if(a[i] == b) return true;
  }
  return false;
}

function hideByClass(elements) {
  for (let el of elements) {
    el.classList.add('hide');
  }
}

function formatAmount(deeds, freeText) {
  deeds.forEach(function(deed) {
    var amount = deed.funding_amount;
    if (amount == 0 || !amount || amount == freeText) {
      deed.funding_amount = freeText;
    } else {
      deed.funding_amount = numToCurrency(amount);
    }
  });
  return deeds;
}

function numToCurrency(num) {
  if (!String(num).includes('$')) {
    return '$' + num.toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
  } else {
    return num;
  }
}
