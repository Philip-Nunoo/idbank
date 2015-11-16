Meteor.publish 'myTasks', ->
    if @userId
        Tasks.find owner: @userId
    else
        @ready()