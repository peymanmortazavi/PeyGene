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

try
{
    

    var done = function() {
        
        var page = PGPage.create();
        
        var color = PGColor.fromRGBA(128, 0, 0, 255);
        console.log("a");
        
        page.view.backgroundColor = PGColor.fromRGBA(128, 0, 0, 255);
        
        present(page);
        
    };
    

}
catch(ex){
    console.log("Exception: " + ex);
}