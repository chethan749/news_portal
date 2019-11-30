var app = angular.module("myApp");


app.controller('loginController', function($scope, $location, $http, $window) {
  $scope.main = "Login";
  $scope.username = "";
  $scope.password = "";

  $scope.check = function() {
    if($window.localStorage.value)
      return true;
    else {
      return false;
    }
  }

  $scope.edit_list_check = function() {
    if($window.localStorage.role == 'editor')
      return true;
    else {
      return false;
    }
  }

  $scope.login = function() {
    $http({
      url: '/login',
      method: 'post',
      data: {
        "username": $scope.username,
        "password": $scope.password,
        "permission": $scope.permission
      }
    }).then(function(data) {
      if(data.data.success) {
        //$('#login').hide();
        $window.localStorage["value"] = $scope.username;
        if($scope.permission == 'w') {
          $window.localStorage['role'] = 'writer';
          $location.path('/writer');
        }
        else if($scope.permission == 'e') {
          $window.localStorage['role'] = 'editor';
          $location.path('/editor');
        }
      }
      else {
        alert(data.data.message);
      }
    }, function(err){})
  }

  $scope.logout = function() {
    $window.localStorage.clear();
    alert('You have been successfully logged out');
    $location.path('/home');
  }
});


app.controller('homeController', function($scope, $http, $resource, $route) {
  $scope.main = "Home";
  var info=$resource('/home');
  info.query(function(result){
          $scope.feed = result;
     })
});

app.controller('ratingController', function($scope, $http, $location, $route) {
  $scope.rate = function() {
    $http({
      url: '/rate',
      method: 'post',
      data: {
        "article_id": $scope.x.article_id,
        "rating": $scope.rating,
      }
    }).then(function(data) {
      if(data.data.affectedRows) {
        alert('You rated the article ' + $scope.rating)
        $location.path($location.url());
        $route.reload();
      }
      else {
        alert('Article Rating failed');
      }
    }, function(err){})
  }
});

app.controller('writerController', function($scope,$http, $window, $resource, $route ,$location ){
  $scope.main=localStorage.value;


  if($window.localStorage.value && $window.localStorage.role == 'writer')
    $location.path('/writer');
  else {
    $location.path('/home');
    alert('Please complete login before accessing this page');
  }

  $scope.addnews = function() {
    $http({
      url: '/writer',
      method: 'post',
      data: {
        "headline": $scope.headline,
        "content": $scope.content,
        "image": $scope.image,
        "writername": $window.localStorage["value"]
      }
    }).then(function(data) {
      if(data.data.success) {
        alert("Success!");
        $location.path('/home');
      }
      else {
        alert(data.data.message);
      }
    }, function(err){})
  }
});

app.controller('editorController', function($scope,$http, $window, $resource, $route ,$location ){
  $scope.main="editor";


  if($window.localStorage['value'] && $window.localStorage.role == 'editor')
    $location.path('/editor');
  else {
    $location.path('/home');
    alert('Please complete login before accessing this page');
  }

  var test = {};
  var info=$resource('/editor');
  info.query(function(result){
          $scope.feed = result;
     })

     $scope.deletenews = function(x) {
       $http({
         url: '/delete',
         method: 'post',
         data: {
           "deleteheadline": x.title
         }
       }).then(function(data) {
         if(data.data.success) {
           alert("Success!");
           $location.path('/editor');
           $route.reload();
         }
         else {
           alert(data.data.message);
         }
       }, function(err){})
     }

     $scope.approvenews = function(x) {
       $http({
         url: '/approve',
         method: 'post',
         data: {
           "appheadline": x.title
         }
       }).then(function(data) {
         if(data.data.success) {
           alert("Success!");
           $location.path('/editor');
           $route.reload();
         }
         else {
           alert(data.data.message);
         }
       }, function(err){})
     }

});

app.controller('homeController', function($scope,$http, $resource, $route) {
  $scope.main = "Home";
  var test = {};
  var info=$resource('/home');
  info.query(function(result){
          $scope.feed = result;
     })
});

app.controller('feedbackController', function($scope,$http, $window, $resource, $route ,$location ){
  $scope.main="feedback";

  $scope.feedback = function() {
    $http({
      url: '/feedback',
      method: 'post',
      data: {
        "email": $scope.email,
        "phone": $scope.phone,
        "comment": $scope.comment,
        "line": $scope.line,
        "correction": $scope.correction
      }
    }).then(function(data) {
      if(data.data.success) {
        alert("Thank you!");
        $location.path('/home');
      }
      else {
        alert(data.data.message);
      }
    }, function(err){})
  }
});

app.controller('politicsController', function($scope,$http, $resource, $route) {
  $scope.main = "Politics";
  var test = {};
  var info=$resource('/politics');
  info.query(function(result){
          $scope.feed = result;
     })
});

app.controller('technologyController', function($scope,$http, $resource, $route) {
  $scope.main = "Technology";
  var test = {};
  var info=$resource('/technology');
  info.query(function(result){
          $scope.feed = result;
     })
});
app.controller('businessController', function($scope,$http, $resource, $route) {
  $scope.main = "Business";
  var test = {};
  var info=$resource('/business');
  info.query(function(result){
          $scope.feed = result;
     })
});
app.controller('sportsController', function($scope,$http, $resource, $route) {
  $scope.main = "Sports";
  var test = {};
  var info=$resource('/sports');
  info.query(function(result){
          $scope.feed = result;
     })
});
app.controller('moviesController', function($scope,$http, $resource, $route) {
  $scope.main = "Movies";
  var test = {};
  var info=$resource('/movies');
  info.query(function(result){
          $scope.feed = result;
     })
});
app.controller('internationalController', function($scope,$http, $resource, $route) {
  $scope.main = "International";
  var test = {};
  var info=$resource('/international');
  info.query(function(result){
          $scope.feed = result;
     })
});

app.controller('suggestededitsController', function($scope, $window, $http, $resource, $route, $location) {
  if(!($window.localStorage.role == 'editor')) {
    alert('Please complete login before accessing this page');
    $location.path('/home');
  }
  var info = $resource('/suggestededits');
  info.query(function(result){
    $scope.feed = result;
    console.log(result);
  });
  $scope.done = function(email, title) {
    $http({
      url: '/done',
      method: 'post',
      data: {
        "email": email,
        "title": title
      }
    }).then(function(data) {
      if(data.data.success) {
        alert("Correction registered as done");
        $route.reload();
      }
      else {
        alert(data.data.message);
      }
    }, function(err){})
  }
});
