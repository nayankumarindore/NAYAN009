public class NegativeNumberController {
    public static integer findNegativeNumberCount(List<List<Integer>>intList){
        integer countOfNegativeNumber=0;
        for(integer i=0;i<intList.size();i++){
            for(integer j=0;j<intList[i].size();j++){
                if(intList[i][j]<0){
                    countOfNegativeNumber += intList[i].size() - j;
                    break;
                }
            }
        }
        system.debug('countOfNegativeNumber=='+countOfNegativeNumber);
        return countOfNegativeNumber;
    }
}