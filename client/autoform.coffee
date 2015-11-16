createTaskAutoFormHooks = {
    before: {
        formType: (doc)-> return    
    },

    after: {
        formType: (error, result)-> return
    },

    onSubmit: (insertDoc, updateDoc, currentDoc)->
        # this.done(); // submitted successfully, call onSuccess
        # this.done(new Error('foo')); // failed to submit, call onError with the provided error
        # this.done(null, "foo"); // submitted successfully, call onSuccess with `result` arg set to "foo"
        @done()
    ,

    onSuccess: (formType, result)-> return
    ,

    onError: (formType, error)-> 
        if error
            console.log error

    ,

    formToDoc: (doc)->
        doc
    ,

    formToModifier: (modifier)-> return
    ,
    

    # // Called at the beginning and end of submission, respectively.
    # // This is the place to disable/enable buttons or the form,
    # // show/hide a "Please wait" message, etc. If these hooks are
    # // not defined, then by default the submit button is disabled
    # // during submission.
    beginSubmit: ()->
    ,
    endSubmit: ()->
}

AutoForm.hooks({
    "createTask": createTaskAutoFormHooks
});