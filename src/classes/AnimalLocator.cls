public class AnimalLocator{
public static String getAnimalNameById(Integer x){
    Http http = new Http();
    HttpRequest req = new HttpRequest();
    req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + x);
    req.setMethod('GET');
    
    HttpResponse res = http.send(req);
    Map<String, Object> results=new Map<String, Object>();
    Map<String, Object> animal=new Map<String, Object>();
        if (res.getStatusCode() == 200) {
            results = (Map<String, Object>)JSON.deserializeUntyped(res.getBody());
            animal= (Map<String, Object>) results.get('animal');
        }
    return (String)animal.get('name');


}
}