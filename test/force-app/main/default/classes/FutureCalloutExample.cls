global class FutureCalloutExample{
    public static void test(){
        String accId='001dM00002MB9caQAD';
        doInFuture(accId);
}
    @future
    public static void doInFuture(String accId){
         // Perform a callout to an external service
         Account acc = [Select Id,Name from Account where Id =:accId LIMIT 1 ];
        System.debug(acc.Name);
        acc.Name ='Update from Future';
        update acc;

    }
}