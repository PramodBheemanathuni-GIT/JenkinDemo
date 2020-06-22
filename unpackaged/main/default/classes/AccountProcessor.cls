public class AccountProcessor{

    @future(callout='true')
    public static void countContacts(list<id> Accountids){
    list<Account> acclst=new list<Account>();
    for(Account a:[select id,name,Number_of_Contacts__c,(select id from contacts) from Account where id IN:Accountids]){
        Account ac=new Account();
        ac.id=a.id;
        ac.Number_of_Contacts__c=a.contacts.size();
        acclst.add(ac);
    }
    update acclst;
    }
}