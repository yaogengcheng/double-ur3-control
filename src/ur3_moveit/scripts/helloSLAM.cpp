#include <iostream>
#include <math.h>
#include <algorithm>

#include <Eigen/Dense>
#include <Eigen/Core>
#include <Eigen/Geometry>
#include <Eigen/StdVector>
 
 int main(int argc, char** argv)
{
	
    Eigen::Vector3d vecbefore;
	vecbefore << 0, 0, 1;
	Eigen::Vector3d vecafter;
	vecafter << 0, 0, 1;
 
	//【1】求两个向量间的旋转角angle(点积)
	double tem = vecbefore.dot(vecafter);//分子
	double tep = sqrt( vecbefore.dot(vecbefore) * vecafter.dot(vecafter) );//分母
	double angle = acos(tem / tep);
	if (std::isnan(angle))//acos取值范围[-1,1],若超出范围则越界，输出-1.#IND00
	{
		angle = acos(tep / tem);
	}
	std::cout << "角度： " << angle << std::endl;
 
	//【2】求旋转轴（叉积）
	Eigen::Vector3d axis1 = vecbefore.cross(vecafter);
	std::cout << "求旋转轴： " << axis1 << std::endl;
	Eigen::Vector3d axis2 = vecafter.cross(vecbefore);
	std::cout << "求旋转轴： " << axis2 << std::endl;
	std::cout << "求旋转轴(归一化)： " << axis2.normalized() <<"gui"<< std::endl;
	// //【3】求旋转矩阵

    Eigen::AngleAxisd rotation_vector ( angle, axis2.normalized() );
    Eigen::Matrix3d rotation_matrix = rotation_vector.toRotationMatrix();
	std::cout << rotation_matrix << std::endl;
	Eigen::Vector3d euler_angles = rotation_matrix.eulerAngles ( 2,1,0 ); // ZYX 顺序,即 yaw pitch roll顺序
    std::cout<<"yaw pitch roll = "<<euler_angles.transpose()<<std::endl;
	// 可以直接把 AngleAxis 赋值给四元数,反之亦然
    Eigen::Quaterniond q = Eigen::Quaterniond ( rotation_vector );
    std::cout<<"quaternion = \n"<<q.coeffs() <<std::endl; // 请注意 coeffs 的顺序是 (x,y,z,w), w 为实部,前三者为虚部

	// Eigen::Affine3f transform_2 = Eigen::Affine3f::Identity();
	// // Define a translation of 2.5 meters on the x axis.
	// transform_2.translation() << 0, 0, 0;
	// // The same rotation matrix as before; theta radians arround Z axis
	// transform_2.rotate(Eigen::AngleAxisf(angle, axis2.normalized()));
	// // Print the transformation
	// std::cout << transform_2.matrix() << std::endl;
}

    
