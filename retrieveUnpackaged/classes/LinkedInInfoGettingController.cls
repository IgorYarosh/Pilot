public class LinkedInInfoGettingController {
   private Account acc;
    
     public LinkedInInfoGettingController(ApexPages.StandardController controller) {
              acc =  (Account) controller.getRecord();
     }
    
    
    public PageReference getProfileInfo() {
        String id = ApexPages.currentPage().getParameters().get('id'); 
        Http httpProtocol = new Http();
        HttpRequest request = new HttpRequest();
        String endpoint = 'https://www.linkedin.com/uas/oauth2/authorization?response_type=code&'+
            'client_id=77g4221ckt4gaw&'+
            'redirect_uri=https://c.ap2.visual.force.com/apex/LinkedInInfoGettingConfirm?core.apexpages.request&state='+id;
            
         //acc.Description = endpoint;
         PageReference pageRef = new PageReference(endpoint);
     return pageRef; 
             
        //request.setEndPoint(endpoint);
        //request.setMethod('GET');
        //HttpResponse response = httpProtocol.send(request);
        //String myAuthCode = response.getHeader('code');
        //myAuthCode = string.valueof(Cache.Session.get('myvar'));
        //acc.Site = myAuthCode;
        //String ss = response.toString();
        //System.debug('response = ' + myAuthCode);
/*

            String postURL = 'https://www.linkedin.com/uas/oauth2/accessToken?grant_type=authorization_code&code=' + myAuthCode +
            '&redirect_uri=https://ap2.salesforce.com/0012800000zoV43&client_id=78ii0zr29dym0b&client_secret=0K8AVp81eV5VTMRk';
         Http http = new Http();
         HttpRequest req = new HttpRequest();
         req.setEndpoint(postURL);
         req.setMethod('POST');
         HttpResponse res = http.send(req);
            //acc.Name = res.getStatus();
            //acc.Description = res.getBody();
            
            //https://api.linkedin.com/v1/company/38745?format=json
            
         Http httpProtocol = new Http();
         HttpRequest request = new HttpRequest();
         String endpoint = 'https://jsonplaceholder.typicode.com/posts/1';
         //String endpoint = 'https://jsonplaceholder.typicode.com/posts/1';
            request.setEndPoint(endpoint);
            request.setMethod('GET');
            HttpResponse response = httpProtocol.send(request);
                    
            JSONParser parser = JSON.createParser(response.getBody());
         String mytitle;
         while (parser.nextToken() != null) {
             if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                 (parser.getText() == 'title')) {
                 parser.nextToken();
                 mytitle = parser.getText();
             }
         }
            acc.Description = mytitle;*/
        }
}