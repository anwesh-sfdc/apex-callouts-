public class PostsCallouts {
 public List<Mywrapper> MyWrapperList{get;set;}

public List<Mywrapper> getrestcallout(){

MyWrapperList = new List<Mywrapper>();
    
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://jsonplaceholder.typicode.com/posts');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
         MyWrapperList=(List<Mywrapper>)json.deserialize(response.getbody(),List<Mywrapper>.class);
        }
        return MyWrapperList;
    }
public class Mywrapper {

public String UserId{get;set;}

public String Id{get;set;}

public String Title{get;set;}

public String Body{get;set;}
}
}
