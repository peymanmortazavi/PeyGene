/**
 * Created by Peyman Mortazavi on 6/23/15.
 * Standard Library (Alpha)
 */

// PGSize
PGSize.init = function (width, height) {
    var size = PGSize.create();
    size.width = width;
    size.height = height;
    return size;
}
PGSize.zero = PGSize.init(0, 0);

// PGPoint
PGPoint.init = function (x, y) {
    var point = PGPoint.create();
    point.x = x;
    point.y = y;
    return point;
}
PGPoint.zero = PGPoint.init(0, 0);

// PGFrame
PGFrame.init = function(value1, value2, value3, value4) {
    var frame = PGFrame.create();
    if(value3 === undefined && value4 == undefined) {
        if(value1 instanceof PGPoint && value2 instanceof PGSize) {
            frame.location = value1;
            frame.size = value2;
        } else {
            throw new TypeError();
        }
    } else {
        frame.x = value1;
        frame.y = value2;
        frame.width = value3;
        frame.height = value4;
    }
    return frame;
}
PGFrame.zero = PGFrame.create();

// PGColor
PGColor.white = PGColor.fromRGBA(0,   0,   0,   0);
PGColor.black = PGColor.fromRGBA(255, 255, 255, 255);
PGColor.red   = PGColor.fromRGBA(255, 0,   0,   255);
PGColor.green = PGColor.fromRGBA(0,   255, 0,   255);
PGColor.blue  = PGColor.fromRGBA(0,   0,   255, 255);

 var done = function() {

     try {
         
         var view = PGView.create();
         view.backgroundColor = PGColor.fromRGBA(14, 142, 180, 100);
         view.layoutParameters = PGFrame.init(0,0, 100, 200);
         
         var view2 = PGView.create();
         view2.layoutParameters = PGFrame.init(10, 0, 50, 100);
         view2.backgroundColor = PGColor.green;
         
         view.addSubview(view2);
         loadView(view);
         
     } catch(ex){
         console.log(ex);
     }
};