trigger AccCategory on Account (before insert, before update) {
    for(Account a : Trigger.new){
        
        if(a.AnnualRevenue > 2000000){
            a.Category__c = 'Premimium';
        }
    }
}