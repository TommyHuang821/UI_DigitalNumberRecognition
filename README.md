# UI_DigitalNumberRecognition

The Recognition algorithm is learning by the Convolutional Neural Network(CNN).

All images or videos were done by two pre-processing, wihch are image resize to 28*28 and Binarization.

The structure of CNN is input→6c(Sigmoid)→2s→12c(Sigmoid)→2s→connection(Sigmoid)→output

Main Entry: "UI_NumberRecognition.m"

# UI design

![alt tag](https://github.com/TommyHuang821/UI_DigitalNumberRecognition/blob/master/UI_Design.png)

![alt tag](https://github.com/TommyHuang821/UI_DigitalNumberRecognition/blob/master/UI_Example.png)



# Note: 
Push the Browse: You have to select a file, which you want to analyze.

Check the check box: You must check the check box of File type (isImage/isVideo).

Push the Process: Get the final result.

In video case, the speed is 0.5s per-frame.
Please tune the speed (Line 27 in Process_Recognition.m) to you want, if you feel the display speed is too slow.


