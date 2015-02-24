var mysqlize = angular.module('mysqlize', ['ui.bootstrap']);
mysqlize.controller('OptionController', function($scope, $http){
  $http.get('/options/xtrabackup/2.2.3').
    success(function(data, status, headers, config){
      $scope.options = data
    });

});


