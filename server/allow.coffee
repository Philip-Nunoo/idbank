Tasks.allow
    insert: (userId, doc) ->
        userId?
    update: (userId, doc, fields, modifier) ->
        doc.owner == userId
    remove: (userId, doc) ->
        doc.owner == userId
    # fetch: ['owner'],
    # transform: () ->
    #     # ...
    