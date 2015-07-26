/**
 * Created by peyman on 6/23/15.
 */

//PGFrame.create = function (x, y, width, height) {
//    var frame = PGFrame.createWithXYWidthHeight(); // native init function.
//    frame.x = x || 0;
//    frame.y = y || 0;
//    frame.width = width || 0;
//    frame.height = height || 0;
//    return frame;
//};

 var done = function() {

     try{
         var view = PGView.new();
         view.backgroundColor = PGColor.fromRGBA(14, 142, 180, 100);
         console.log(view);
         loadView(view);
     } catch(ex){
         console.log(ex);
     }
     
//     try
//     {
//         
//        var page = PGPage.create();
//         
//        var view = PGView.create();
//         view.frame = PGFrame.create(45, 45, 50, 50);
//         
//        page.rootView.backgroundColor = PGColor.fromRGBA(0.5, 255, 0, 255);
//        page.rootView.addSubview(view);
//        
//        console.log(page.rootView.backgroundColor);
//        
//        present(page);
//     }
//     catch(ex){
//         console.log("Exception: " + ex);
//     }
     
    };