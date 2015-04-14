var casper = require('casper').create();

arg1 = casper.cli.get(0).split('##', 2);

url = arg1[0];
selector = arg1[1];

casper.start(url, function() {
  this.captureSelector(
    url.split('//')[1].split('.').reverse().join('.') + '.png',
    selector
  );
});

casper.run();
