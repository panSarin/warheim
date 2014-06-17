@warheim.controller 'CreaturesIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.creatures = []
  $http.get('./creatures.json').success((data) ->
    $scope.creatures = data
  )

  $scope.viewCreature = (id) ->
    $location.url "/creatures/#{id}"
]
