'use strict';

describe('Service: expenseService', function () {

  // load the service's module
  beforeEach(module('smartMoneyV1App'));

  // instantiate service
  var expenseService;
  beforeEach(inject(function (_expenseService_) {
    expenseService = _expenseService_;
  }));

  it('should do something', function () {
    expect(!!expenseService).toBe(true);
  });

});
