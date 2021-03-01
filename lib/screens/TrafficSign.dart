import 'package:flutter/material.dart';

class TrafficSign extends StatefulWidget {
  @override
  _TrafficSignState createState() => _TrafficSignState();
}

class _TrafficSignState extends State<TrafficSign>
    with SingleTickerProviderStateMixin {
  final _transformationController = TransformationController();
  TapDownDetails _doubleTapDetails;

  AnimationController _animationController;
  Animation<Matrix4> _animation;

  void _handleDoubleTapDown(TapDownDetails details) {
    _doubleTapDetails = details;
  }

  void _handleDoubleTap() {
    Matrix4 _endMatrix;
    Offset _position = _doubleTapDetails.localPosition;

    if (_transformationController.value != Matrix4.identity()) {
      _endMatrix = Matrix4.identity();
    } else {
      _endMatrix = Matrix4.identity()
        ..translate(-_position.dx * 2, -_position.dy * 2)
        ..scale(3.0);
    }

    _animation = Matrix4Tween(
      begin: _transformationController.value,
      end: _endMatrix,
    ).animate(
      CurveTween(curve: Curves.easeOut).animate(_animationController),
    );
    _animationController.forward(from: 0);
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    )..addListener(() {
        _transformationController.value = _animation.value;
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[300],
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Traffic Signs & Symbols'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onDoubleTapDown: _handleDoubleTapDown,
            onDoubleTap: _handleDoubleTap,
            child: InteractiveViewer(
                panEnabled: true,
                // Set it to false
                boundaryMargin: EdgeInsets.all(200),
                minScale: 1,
                maxScale: 3,
                transformationController: _transformationController,
                child: Image(
                  image: AssetImage('assets/images/traffic_sign.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
        ));
  }
}
