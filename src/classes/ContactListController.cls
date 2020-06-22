public class ContactListController {
    @AuraEnabled
    public static list<contact> getContactList(string accountId){
        return [Select Id, Name, LastName, FirstName, Phone , Email,AccountId From Contact where AccountId=:accountId ];
    }
    @AuraEnabled
    public static Contact createContact(contact con, Id AccountId){
        con.AccountId= AccountId;
        insert con;
        return con;
        
    }

}