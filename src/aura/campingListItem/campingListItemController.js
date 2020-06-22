({
	packItem : function(component, event, helper) {
        
		component.set("v.item.Packed__c",true);
        var button = event.getsource();
        button.get('disabled',true);
	}
})