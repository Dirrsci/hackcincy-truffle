let restify = require('restify');
let server = restify.createServer();

let abis = JSON.stringify([
  require('./build/contracts/Event'),
  require('./build/contracts/EventManager'),
  require('./build/contracts/Ticket')
]);

// used by truffles deploy process
module.exports = (terrapinAddr) => {
  server.get('/contract-info', (req, res, next) => {
    res.json({
      abis,
      terrapinAddr
    });
    next();
  });

  server.listen(8080, function() {
    console.log('%s listening at %s', server.name, server.url);
  });
};
