'use strict';

/**
 * @ngdoc function
 * @name smartMoneyV1App.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the smartMoneyV1App
 */
angular.module('smartMoneyV1App')
	.controller('ExpenseController', function($scope,expenseService) {
		//$scope.config.isopen=true;
		$scope.open = function(event){
	        console.log("open");
	        event.preventDefault();
	        event.stopPropagation();
	        $scope.opened = true;
      };
		expenseService.getExpenses().then(function(data) {
			console.log(data.data);
			$scope.expenses = data.data;
			$scope.totalAmount = $scope.getTotal();
			console.log($scope.totalAmount);
		});
		$scope.totalAmount = 0;
		$scope.getTotal = function() {
			var total = 0;
			for (var i = 0; i < $scope.expenses.length; i++) {
				total += Number($scope.expenses[i].exp_amount);

			}
			return total;
		}
	});