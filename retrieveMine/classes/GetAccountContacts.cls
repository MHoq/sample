public class GetAccountContacts {  
    public List<Account> getAccConCases(){
        //List<Account> lAcc = [select id, Name, (select id, Name, Email from Account.Contacts), (select id, ContactId, CaseNumber from Cases) from account LIMIT 10];
        List<Account> lAcc = [select id, Name, (select id, ContactId, CaseNumber from Cases), (select id, Name, Email from Account.Contacts) from account LIMIT 10];
        system.debug( lAcc );
        return lAcc;
    }                
}