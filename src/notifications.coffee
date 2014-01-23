app = angular.module "Notifications", ["ui.bootstrap"]

controller = app.controller "NotificationsController", ($scope) ->

    $scope.close = (index) ->
        $scope.notifications.splice(index, 1)

    $scope.notifications = []

    return


controller.directive "notifications", ->

    link: (scope, element, attrs) ->
        socket = io.connect attrs.server

        socket.on "message", (data) ->
            scope.$apply ->
                scope.notifications.push
                    type: "info"
                    msg: data
                return
            return
