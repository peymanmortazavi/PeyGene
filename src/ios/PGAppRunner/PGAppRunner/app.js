try{
    
    console.log("Starting...");
    
    var myPage = PGPage.create();
    myPage.content.backgroundColor = PGColor.yellow;
    
    var counter = 0;
    
    var myButton = PGButton.init(PGFrame.init(10,20,100,50));
    myButton.backgroundColor = PGColor.red;
    myButton.text = "Count Up!";
    myButton.backgroundColor = PGColor.teal;
    myButton.style.borderColor = PGColor.red;
    myButton.style.borderWidth = 1;
    myButton.style.cornerRadius = 10;
            myButton.onClick = function (btn) {
                myLabel.text = "Count: " + counter++;
            }
    myButton.textColor = PGColor.black;
    
    var myButton2 = PGButton.init(PGFrame.init(100, 200, 100, 50));
    myButton2.text = "THIS";
    myButton2.textColor = PGColor.blue;
            myButton2.onClick = function(btn) {
                console.log('clicked');
            }
    
    var myLabel = PGLabel.init(PGFrame.init(10,100, 100, 50));
    myLabel.backgroundColor = PGColor.clear;
    myLabel.text = "My View";
    
    myPage.content.addSubview(myButton);
    myPage.content.addSubview(myButton2);
    myPage.content.addSubview(myLabel);
    
} catch (exception) {
    console.log(exception);
    
}


function main () {
    return myPage;
}