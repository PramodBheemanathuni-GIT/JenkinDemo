({
	doCreateMap : function(component, event, helper) {
		var Map=[];
        for(var i=0;i<10;i++){
            
            Map.push({
                key:i,
                value:'Test '+i
            })
        }
        component.set('v.testMap',Map);
	}
})