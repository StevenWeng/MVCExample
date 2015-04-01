<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
<script type="text/javascript">
	var app = angular.module('app', []);
	app.config([ '$httpProvider', function($httpProvider) {
		$httpProvider.defaults.transformRequest = function(data) {
			if (data === undefined) {
				return data;
			}
			return $.param(data);
		};
		$httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
	} ]);
	app.controller('mainCtrl', [ '$scope', '$http', function($scope, $http) {
		$scope.c = function() {

			$http({
				url : 'hi',
				method : 'POST',
				data : {
					name : '90'
				}
			}).success(function(data, status) {
				console.log(data);
			});
		};
	} ]);
</script>
<title>建立訂單</title>
</head>
<body ng-app="app">
	<h1>Create order </h1>
	<h2>${ttt}</h2>
	<hr />
	<div class="row" ng-controller="mainCtrl">
		<input type="button" value="hi" ng-click="c()"/>
	</div>
</body>
</html>