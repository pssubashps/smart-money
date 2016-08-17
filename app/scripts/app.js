'use strict';

/**
 * @ngdoc overview
 * @name smartMoneyV1App
 * @description
 * # smartMoneyV1App
 *
 * Main module of the application.
 */
angular
  .module('smartMoneyV1App', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ui.bootstrap', 
    'ui.bootstrap.datetimepicker'
  ])
  .config(function($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/expenses.html',
        controller: 'ExpenseController',
        controllerAs: 'exp'
      }).when('/edit-expense/:expenseID', {
        title: 'Edit Expense',
        templateUrl: 'views/edit-expense.html',
        controller: 'ExpenseController',
        resolve: {
          customer: function(expenseService, $route) {
            var expenseID = $route.current.params.expenseID;
            return expenseService.getExpense(expenseID);
          }
        }
      })

    .otherwise({
      redirectTo: '/'
    });
  });