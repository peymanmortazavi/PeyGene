/**
 * Created by peyman on 6/23/15.
 */

PGFrame.create = function (x, y, width, height) {
    var frame = PGFrame.createWithXYWidthHeight(); // native init function.
    frame.x = x || 0;
    frame.y = y || 0;
    frame.width = width || 0;
    frame.height = height || 0;
    return frame;
};

 var done = function() {
     
     try
     {
         
         
         
        var page = PGPage.create();
        
        console.log("pg page created");
        console.log(page.viewModel);
        console.log(page.viewModel.backgroundColor);
        
        page.viewModel.backgroundColor = PGColor.fromRGBA(128, 0, 0, 255);
        
        console.log(page.viewModel.backgroundColor);
        
        present(page);
     }
     catch(ex){
         console.log("Exception: " + ex);
     }
        
    };
    