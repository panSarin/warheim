@warheim.controller 'CreaturesShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./creatures/#{$routeParams.id}.json").success((data) ->
    $scope.creature = data
  )
]
