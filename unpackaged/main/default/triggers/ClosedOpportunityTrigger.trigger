trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
list<Task> lsttask =new list<Task>();

for(Opportunity o:[Select id, stageName from Opportunity where ID in : Trigger.New AND stageName ='Closed Won' ]){
    if(o.StageName == 'Closed Won'){
    lsttask.add(new task(subject='Follow Up Test Task', WhatId=o.id));
        
    }
}
if(lsttask.size()>0){
    insert lsttask;
}

}