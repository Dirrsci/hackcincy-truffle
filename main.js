// read in ABIS and put them in process.env.ABIS
// ...
// require('./server') // start the server

process.env.ABIS = JSON.stringify([
  require('./build/contracts/Event'),
  require('./build/contracts/EventManager'),
  require('./build/contracts/Ticket'),
]);

require('./server');
