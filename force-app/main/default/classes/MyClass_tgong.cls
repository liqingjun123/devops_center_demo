/**
 * Author TCG
 * Date 2022-8-2
 * Description
 * Revision
 */
public with sharing class MyClass_tgong {
    public MyClass_tgong() {

    }

    /**
     * @description getAccount description
     * @param  strName strName description
     * @return         return description
     */
    public List<Account> getAccount(String strName) {
        strName = String.isBlank(strName) ? '' : String.escapeSingleQuotes(strName);
        
        return [SELECT Id, Name FROM Account WHERE Name LIKE :strName];
    }

    /**
     * @description getContact description
     * @return   return description
     */
    public List<Contact> getContact() {
        return [SELECT Id FROM Contact LIMiT 10];
    }
}