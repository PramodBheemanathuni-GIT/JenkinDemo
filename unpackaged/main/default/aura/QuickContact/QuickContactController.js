({
    doSave : function(component, event, helper) {
        var action = component.get('c.createContact');
        action.setParams({
            con: component.get('v.CreateContact'),
            AccountId : component.get('v.accountId')
        });
        action.setCallback(this,function(response){
            var status=response.getState();
            if(status == 'SUCCESS'){
                var Contactlist = response.getReturnValue();
                var ComponentEvent = component.getEvent('quickContact');
                ComponentEvent.setParams({
                    ContactRecord : Contactlist
                });
                ComponentEvent.fire();
            }
        });
         
        $A.enqueueAction(action);
        
        
        
    }
})