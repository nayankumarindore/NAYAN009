public without sharing class DeveloperTestApexController {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name FROM Account  Order By Name Limit 5];
    }
    
    @AuraEnabled(cacheable=true)
    public static boolean isCommunity(){
        Boolean result;
        Id siteId = Site.getSiteId();
        result =(siteId != null) ? true : false;
        return result;
    }
}