void main() async {
  DataService dataService = DataService();
  String data = await dataService.getData();
  print(data);
}

class DataService {
  Future<String> _getDataFromCloud() async {
    //get data from cloud -> time
    await Future.delayed(Duration(seconds: 4));
    print("get data finish");
    return "fake data";
  }

  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {
    //parse data -> time
    await Future.delayed(Duration(seconds: 3));
    print("parse data finish");
    return "parsed data";
  }

  Future getData() async {
    // get data -> time
    final String dataFromCloud = await _getDataFromCloud();

    print(" iam running in paraller while getting data from cloud");// false iam not
    // parse data -> time
    final String parsedDataFromCloud =
        await _parseDataFromCloud(dataFromCloud: dataFromCloud);
  
    // return data -> time

    //! Alternative syntax
    // final String parsedData = await _getDataFromCloud().then((dataFromCloud1) async{
    //   return await _parseDataFromCloud(dataFromCloud: dataFromCloud1);
    // });

    return parsedDataFromCloud;
  }
}
