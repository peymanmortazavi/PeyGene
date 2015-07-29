/**
 * Created by Peyman Mortazavi on 6/23/15.
 * Standard Library (Alpha)
 */

// TO-DOs
// [ ] Better exception handling, more detailed and descriptive errors.

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

// Common 255 scale colors.
PGColor.white   = PGColor.fromRGBA(255, 255, 255, 255);
PGColor.black   = PGColor.fromRGBA(0,   0,   0,   255);
PGColor.red     = PGColor.fromRGBA(255, 0,   0,   255);
PGColor.lime    = PGColor.fromRGBA(0,   255, 0,   255);
PGColor.blue    = PGColor.fromRGBA(0,   0,   255, 255);
PGColor.yellow  = PGColor.fromRGBA(255, 255, 0,   255);
PGColor.magenta = PGColor.fromRGBA(255, 0,   255, 255);
PGColor.cyan    = PGColor.fromRGBA(0,   255, 255, 255);

// Common 128 scale colors.
PGColor.gray    = PGColor.fromRGBA(128, 128, 128, 255);
PGColor.maroon  = PGColor.fromRGBA(128, 0,   0,   255);
PGColor.green   = PGColor.fromRGBA(0,   128, 0,   255);
PGColor.navy    = PGColor.fromRGBA(0,   0,   128, 255);
PGColor.olive   = PGColor.fromRGBA(128, 128, 0,   255);
PGColor.purple  = PGColor.fromRGBA(128, 0,   128, 255);
PGColor.teal    = PGColor.fromRGBA(0,   128, 128, 255);

// PGView
PGView.init = function (frame) {
    if(frame instanceof PGFrame) {
        var view = PGView.create();
        view.layoutParameters = frame;
        return view;
    } else { throw new TypeError('Only PGFrame is accepted.') }
}

// PGButton
PGButton.init = function (frame) {
    if(frame instanceof PGFrame) {
        var view = PGButton.create();
        view.layoutParameters = frame;
        return view;
    } else { throw new TypeError('Only PGFrame is accepted.') }
}

// PGLabel
PGLabel.init = function (frame) {
    if(frame instanceof PGFrame) {
        var view = PGLabel.create();
        view.layoutParameters = frame;
        return view;
    } else { throw new TypeError('Only PGFrame is accepted.') }
}