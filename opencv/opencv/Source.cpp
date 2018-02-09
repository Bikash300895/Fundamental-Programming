#include <opencv2\opencv.hpp>
#include <stdio.h>
#include <iostream>

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


void image_info(Mat img)
{
	//Mat img = imread("lena.jpg");
	cout << "total " << img.total() << endl;
	cout << "type "<<img.type() << endl;
	cout << "size "<<img.size() << endl;
	cout << "channels "<<img.channels() << endl;
	cout << "depth "<<img.depth() << endl;
}

void _gamma_transform(Mat img, String name, double c, double gamma)
{
	Mat gm = img.clone();
	int row = gm.size[0];
	int col = gm.size[1];

	for (int i = 0; i<row; i++)
	{
		for (int j = 0; j<col; j++)
		{
			/*if (gamma < 1) {
				gm.at<uchar>(i, j) = uchar(c * pow(gm.at<uchar>(i, j), gamma));
			}
			else {
				gm.at<uchar>(i, j) = uchar((c * pow(gm.at<uchar>(i, j), gamma))/pow(255, gamma-1));
			}*/

			gm.at<uchar>(i, j) = uchar((c * pow(gm.at<uchar>(i, j), gamma)) / pow(255, gamma - 1));
			
		}
	}

	imshow(name, gm);
	waitKey(0);
}

void gamma_transform()
{
	Mat img = imread("lena.jpg");
	image_info(img);
	imshow("lena", img);

	cvtColor(img, img, CV_BGR2GRAY);
	imshow("gray original", img);

	// Values of c and gamma
	double c = 1;
	double gamma = 0.5;

	_gamma_transform(img,"0.5", 1, 0.5);
	_gamma_transform(img,"0.9", 1, 0.9);

	/*_gamma_transform(img, "10, 0.5", 10, 0.5);
	_gamma_transform(img, "10 0.9", 10, 0.9);*/

	_gamma_transform(img, "1 2.0", 1, 2.0);
	_gamma_transform(img, "1 10.0", 1, 10.0);
	
	
}

void intensity_slicing() {
	Mat img = imread("lena.jpg");
	image_info(img);
	cvtColor(img, img, CV_BGR2GRAY);
	
	imshow("lena", img);

	Mat des = img.clone();
	int x1 = 90, y1 = 70, x2 = 200, y2 = 220;
	cin>>x1>>y1>>x2>>y2;

	int row = img.size[0];
	int col = img.size[1];

	for (int i = 0; i < row; i++) {
		for (int j = 0; j < col; j++) {
			if (img.at<uchar>(i, j) <= x1) {
				double slope = (double)y1 / x1;
				des.at<uchar>(i, j) = (uchar)(slope * (double)img.at<uchar>(i, j));
			}
			else if (img.at<uchar>(i, j) <= x2) {
				double slope = (double)(y2 - y1) / (x2 - x1);
				des.at<uchar>(i, j) = (uchar)(slope * (double)img.at<uchar>(i, j));
			}
			else {
				double slope = (double)(255 - y2) / (255 - x2);
				des.at<uchar>(i, j) = (uchar)(slope * (double)img.at<uchar>(i, j));
			}
		}
	}

	imshow("intensity shifted image", des);

}

int main(int argc, char** argv)
{
	
	//load_and_show_image();
	//im_show();
	//simpleTransform();
	//image_info();
	//gamma_transform();
	intensity_slicing();

	waitKey(0);
	getchar();
	return 0;
}
