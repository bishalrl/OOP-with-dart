void main(){
NetworkServices networkServices=NetworkServices();
Map<String,dynamic> data={
    'email':'aryal.com',
    'name':'Aryal',
    'password':'weasdfa'
};
networkServices.getApi();
networkServices.postApi(data);
}
abstract class BaseApiServices{
    void postApi(var data);

    void getApi();

}
class NetworkServices extends BaseApiServices{
    @override
    void getApi(){
        print('Get Api');
    }
    @override
    void postApi(var data)async{
        print('Post Api');
        await Future.value(Duration(seconds: 3));
        print(data);
    }
}