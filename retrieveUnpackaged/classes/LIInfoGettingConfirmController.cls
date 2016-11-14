public class LIInfoGettingConfirmController {
    
   public LIInfoGettingConfirmController(){                
   }

    public PageReference continueAction() {
       String code = ApexPages.currentPage().getParameters().get('state');
       String myAuthCode = ApexPages.currentPage().getParameters().get('code');
       String postURL = 'https://www.linkedin.com/uas/oauth2/accessToken?grant_type=authorization_code&'+
           'code=' + myAuthCode +'&'+
           'redirect_uri=https://c.ap2.visual.force.com/apex/LinkedInInfoGettingConfirm?core.apexpages.request&'+
           'client_id=77g4221ckt4gaw&'+
           'client_secret=37GzHKDt4ZrFPIeU';
         //Http http = new Http();
         //HttpRequest req = new HttpRequest();
         //req.setEndpoint(postURL);
         //req.setMethod('POST');
         //HttpResponse res = http.send(req);  
        //String d = res.getBody();
        //String g= 'gg';
        PageReference pageRef = new PageReference(postURL);
     return pageRef; 
    }  
    

    
}