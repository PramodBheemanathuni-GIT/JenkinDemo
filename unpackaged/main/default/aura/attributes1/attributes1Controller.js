({
	doAction : function(component, event, helper) {
        alert(component.get('v.Age'));
        alert(component.getName());
        component.set('v.Age',30);
        var TestAge1=component.find('testAge');
        alert(TestAge1.get('v.value'));
        TestAge1.set('v.value',97);
        
        
		
	}
})