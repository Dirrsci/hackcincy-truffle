let abis = JSON.stringify([
  require('./build/contracts/Event'),
  require('./build/contracts/EventManager'),
  require('./build/contracts/Ticket'),
]);

console.log(abis);


server.get('/contract-info', (req, res) => {
  res.json({
    abis,
    terrapinAddr: '???'
  });
});
