
function main () {
    
    try{
     
        console.log("Starting...");
        
        var myPage = PGPage.create();
        myPage.view.backgroundColor = PGColor.yellow;

        var counter = 0;
        
        var myButton = PGButton.init(PGFrame.init(10,20,100,50));
        myButton.backgroundColor = PGColor.red;
        myButton.text = "Count Up!";
        myButton.backgroundColor = PGColor.teal;
        myButton.layer.borderColor = PGColor.red;
        myButton.layer.borderWidth = 1;
        myButton.layer.cornerRadius = 10;
        myButton.onClick = function (btn) {
            myLabel.text = "Count: " + counter++;
        }
        
        var myLabel = PGLabel.init(PGFrame.init(10,100, 100, 50));
        myLabel.backgroundColor = PGColor.clear;
        myLabel.text = "My View";
        
        myPage.view.addSubview(myButton);
        myPage.view.addSubview(myLabel);
        
        return myPage;
        
    } catch (exception) {
        console.log(exception);
        
    }
    
}