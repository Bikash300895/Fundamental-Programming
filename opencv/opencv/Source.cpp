#include <opencv2\opencv.hpp>
#include <stdlib.h>
#include <stdio.h>

using namespace std;
using namespace cv;

Mat src, dst;

void load_and_show_image()
{
	src = imread("lena.jpg");

	imshow("lena", src);
	waitKey(0);

	Mat grayLena;
	cvtColor(src, grayLena, CV_BGR2GRAY);

	imshow("lenaGray", grayLena);

	waitKey(0);
}

void im_show() {
	Mat img = imread("lena.jpg");
	if (img.empty()) return;

	//namedWindow("example1", WINDOW_AUTOSIZE);
	imshow("example1", img);
	waitKey(0);

	//destroyWindow("example1");
	
}

void simpleTransform()
{
	Mat img = imread("lena.jpg");

	imshow("lena", img);

	Mat out;
	GaussianBlur(img, out, Size(5, 5), 3, 3);

	imshow("out", out);
}


int main(int argc, char** argv)
{
	
	//load_and_show_image();
	//im_show();
	simpleTransform();

	waitKey(0);
	return 0;
}
