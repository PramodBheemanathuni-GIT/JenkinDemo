({
    getops : function(cmp){
        var action = cmp.get("c.getopportunities");
        action.setCallback(this,function(resp){
           var State=resp.getState();
            if(State=="SUCCESS"){
                cmp.set("v.Opportunities",resp.getReturnValue());
            }
            
        });
        $A.enqueueAction(action);
	}
})