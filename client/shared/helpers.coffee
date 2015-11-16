Template.registerHelper 'userName', (_id)->
    Meteor.users.findOne(_id).fullName()