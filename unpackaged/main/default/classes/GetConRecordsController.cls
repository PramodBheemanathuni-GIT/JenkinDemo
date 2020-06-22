public with sharing class GetConRecordsController {
    @AuraEnabled
    public static list<Opportunity> getopportunities()
    {
        list<Opportunity> opp=[Select id, Name, closedate from Opportunity limit 100];
       return opp; 
    }

}