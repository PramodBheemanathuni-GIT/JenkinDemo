public class CampingListController {
    @AuraEnabled
    public static list<Camping_Item__c> getItems (){
        return [Select id,Name,Packed__c,Price__c,Quantity__c from Camping_Item__c];
    }
	@AuraEnabled 
    public static Camping_Item__c saveItem (Camping_Item__c cmp){
        upsert cmp;
        return cmp;        
    }
}