({
    doInIt : function(component, event, helper) {
        // Step1
        var action= component.get('c.getContactList');
        /* optional step  Step2*/
        action.setParams({
            accountId : component.get('v.recordId')
        });
        // Step 4:
        action.setCallback(this,function(response){
            
            var responseValue=response.getReturnValue();
            console.log('responseValue ',responseValue);
            component.set('v.contactList',responseValue);                       
        });
        // Step 3:
        $A.enqueueAction(action,false);
        
        
    },
    doRedirect : function(component,event, helper){        
        var eventSource = event.getSource();
        var id= eventSource.get('v.name');
        var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
            "recordId": id,
            "slideDevName": "detail"
        });
        navEvt.fire();
        
    },
    refreshContactObj : function(component, event, helper){
        var conlist = component.get('v.contactList');
        var convalue = component.getEvent('quickContact');        
        	conlist.push(convalue);
        component.set('v.contactList',conlist);
        $A.get('e.force:refreshView').fire();
    }
    
})