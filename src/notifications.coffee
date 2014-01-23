socket = io.connect "http://localhost:3000"

app = angular.module "Notifications", ["ui.bootstrap"]

app.controller "NotificationsController", ($scope) ->

    $scope.close = (index) ->
        $scope.notifications.splice(index, 1)

    $scope.notifications = []

    socket.on "message", (data) ->
        $scope.$apply ->
            $scope.notifications.push
                type: "info"
                msg: data
            return
        return

    return
