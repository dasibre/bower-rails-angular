receta = angular.module('receta',[
  'templates',
  'ngRoute',
  'controllers',
])

receta.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
    .when('/',
      controller: 'RecipesController',
      templateUrl: 'index.html')
])

recipes = [
  {
    id: 1
    name: 'Baked Potato w/ Cheese'
  },
  {
    id: 2
    name: 'Garlic Mashed Potatoes',
  },
  {
    id: 3
    name: 'Potatoes Au Gratin',
  },
  {
    id: 4
    name: 'Baked Brussel Sprouts',
  },
]

controllers = angular.module('controllers', [])
controllers.controller("RecipesController", [ '$scope', '$log', '$routeParams', '$location',
  ($scope, $log, $routeParams,$location)->
    $scope.$log = $log
    $scope.search = (keywords)->  $location.path('/').search('keywords', keywords)

    if $routeParams.keywords
      keywords = $routeParams.keywords.toLowerCase()
      $scope.recipes = recipes.filter (recipe)-> recipe.name.toLowerCase().indexOf(keywords) != -1
    else
      $scope.recipes = []
])

