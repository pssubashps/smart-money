'use strict';

/**
 * @ngdoc service
 * @name smartMoneyV1App.expenseService
 * @description
 * # expenseService
 * Service in the smartMoneyV1App.
 */
angular.module('smartMoneyV1App')
	.factory('expenseService', function($http) {
		var serviceBase = 'http://localhost/exp/smart-money-v1/services/'
		var obj = {};
		obj.getExpenses = function() {
			return $http.get(serviceBase + 'expenses');
		}
		obj.getExpense = function(customerID) {
			return $http.get(serviceBase + 'customer?id=' + customerID);
		}

		obj.insertCustomer = function(customer) {
			return $http.post(serviceBase + 'insertCustomer', customer).then(function(results) {
				return results;
			});
		};

		obj.updateCustomer = function(id, customer) {
			return $http.post(serviceBase + 'updateCustomer', {
				id: id,
				customer: customer
			}).then(function(status) {
				return status.data;
			});
		};

		obj.deleteCustomer = function(id) {
			return $http.delete(serviceBase + 'deleteCustomer?id=' + id).then(function(status) {
				return status.data;
			});
		};

		return obj;
	});