#ifndef TELEOP_PAD_H
#define TELEOP_PAD_H

//所需要包含的头文件
#ifndef Q_MOC_RUN
#include <ros/ros.h>
#include <ros/console.h>
#include <rviz/panel.h>   //plugin基类的头文件
#endif

class QLineEdit;

namespace rviz_teleop_commander
{
// 所有的plugin都必须是rviz::Panel的子类
class TeleopPanel: public rviz::Panel
{
// 后边需要用到Qt的信号和槽，都是QObject的子类，所以需要声明Q_OBJECT宏
Q_OBJECT
public:
    // 构造函数，在类中会用到QWidget的实例来实现GUI界面，这里先初始化为0即可
    TeleopPanel( QWidget* parent = 0 );

    // 重载rviz::Panel积累中的函数，用于保存、加载配置文件中的数据，在我们这个plugin
    // 中，数据就是topic的名称
    virtual void load( const rviz::Config& config );
    virtual void save( rviz::Config config ) const;

// 公共槽.
public Q_SLOTS:
    // 当用户输入topic的命名并按下回车后，回调用此槽来创建一个相应名称的topic publisher
    void setTopic( const QString& topic );

// 内部槽.
protected Q_SLOTS:
    void sendVel();                 // 发布当前的速度值
    void update_joint1_rad();  // 根据用户的输入更新线速度值
    void update_joint2_rad(); // 根据用户的输入更新角速度值
    void update_joint3_rad();  // 根据用户的输入更新线速度值
    void update_joint4_rad(); 
    void update_joint5_rad();  // 根据用户的输入更新线速度值
    void update_joint6_rad(); 
    void updateTopic();             // 根据用户的输入更新topic name

// 内部变量.
protected:
    // topic name输入框
    QLineEdit* output_topic_editor_;
    QString output_topic_;

    // 线速度值输入框
    QLineEdit* output_topic_editor_1;
    QString output_topic_1;

    // 角速度值输入框
    QLineEdit* output_topic_editor_2;
    QString output_topic_2;

   // 线速度值输入框
    QLineEdit* output_topic_editor_3;
    QString output_topic_3;

    // 角速度值输入框
    QLineEdit* output_topic_editor_4;
    QString output_topic_4;

   // 线速度值输入框
    QLineEdit* output_topic_editor_5;
    QString output_topic_5;

    // 角速度值输入框
    QLineEdit* output_topic_editor_6;
    QString output_topic_6;

    // ROS的publisher，用来发布速度topic
    ros::Publisher velocity_publisher_;

    // ROS节点句柄
    ros::NodeHandle nh_;

    // 当前保存的线速度和角速度值
    float joint1;
    float joint2;
    float joint3;
    float joint4;
    float joint5;
    float joint6;
};

} // end namespace rviz_teleop_commander

#endif // TELEOP_PANEL_H
