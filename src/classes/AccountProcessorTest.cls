@IsTest

Public class AccountProcessorTest{
@IsTest

    Public static void testmethod1(){
    list<id> lstacc=new list<id>();        
        Account abc=new Account(Name='Pramod', Phone='7030463555');
        insert abc;
        contact c=new contact(Accountid=abc.id,lastname='bheemanathuni');
        insert c;
        lstacc.add(abc.id);
        Test.setMock(HttpCalloutMock.class, new SMSCalloutMock());
        Test.startTest();     
        AccountProcessor.countContacts(lstacc);        
        Test.stopTest();
    }
}