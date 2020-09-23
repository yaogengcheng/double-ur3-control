#include <stdio.h>

#include <QPainter>
#include <QLineEdit>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QLabel>
#include <QTimer>

#include <geometry_msgs/Twist.h>
#include <sensor_msgs/JointState.h>
#include <QDebug>

#include "teleop_pad.h"

namespace rviz_teleop_commander
{

// 构造函数，初始化变量
TeleopPanel::TeleopPanel( QWidget* parent )
  : rviz::Panel( parent )
  , joint1( 0 )
  , joint2( 0 )
  , joint3( 0 )
  , joint4( 0 )
  , joint5( 0 )
  , joint6( 0 )
{
    // 创建一个输入topic命名的窗口
    QVBoxLayout* topic_layout = new QVBoxLayout;
    topic_layout->addWidget( new QLabel( "Teleop Topic:" ));
    output_topic_editor_ = new QLineEdit;
    topic_layout->addWidget( output_topic_editor_ );

    // 创建一个关节1的窗口
    topic_layout->addWidget( new QLabel( "joint1:" ));
    output_topic_editor_1 = new QLineEdit;
    topic_layout->addWidget( output_topic_editor_1 );

    // 创建一个关节2的窗口
    topic_layout->addWidget( new QLabel( "joint2:" ));
    output_topic_editor_2 = new QLineEdit;
    topic_layout->addWidget( output_topic_editor_2 );
    
     // 创建一个关节3的窗口
    topic_layout->addWidget( new QLabel( "joint3:" ));
    output_topic_editor_3 = new QLineEdit;
    topic_layout->addWidget( output_topic_editor_3 );

    // 创建一个输入关节4的窗口
    topic_layout->addWidget( new QLabel( "joint4:" ));
    output_topic_editor_4 = new QLineEdit;
    topic_layout->addWidget( output_topic_editor_4 );

    // 创建一个关节5的窗口
    topic_layout->addWidget( new QLabel( "joint5:" ));
    output_topic_editor_5 = new QLineEdit;
    topic_layout->addWidget( output_topic_editor_5 );

    // 创建一个输入关节6的窗口
    topic_layout->addWidget( new QLabel( "joint6:" ));
    output_topic_editor_6 = new QLineEdit;
    topic_layout->addWidget( output_topic_editor_6 );

    QHBoxLayout* layout = new QHBoxLayout;
    layout->addLayout( topic_layout );
    setLayout( layout );

    // 创建一个定时器，用来定时发布消息
    QTimer* output_timer = new QTimer( this );

    // 设置信号与槽的连接
    // 输入topic命名，回车后，调用updateTopic()
    connect( output_topic_editor_, SIGNAL( editingFinished() ), this, SLOT( updateTopic() ));    
    // 输入关节1，回车后，调用update_Linear_Velocity()    
    connect( output_topic_editor_1, SIGNAL( editingFinished() ), this, SLOT( update_joint1_rad() )); 
    // 输入关节2，回车后，调用update_Angular_Velocity()
    connect( output_topic_editor_2, SIGNAL( editingFinished() ), this, SLOT( update_joint2_rad() ));
    // 输入关节3，回车后，调用update_Linear_Velocity()    
    connect( output_topic_editor_3, SIGNAL( editingFinished() ), this, SLOT( update_joint3_rad() )); 
    // 输入关节4，回车后，调用update_Angular_Velocity()
    connect( output_topic_editor_4, SIGNAL( editingFinished() ), this, SLOT( update_joint4_rad() ));
    // 输入关节5，回车后，调用update_Linear_Velocity()    
    connect( output_topic_editor_5, SIGNAL( editingFinished() ), this, SLOT( update_joint5_rad() )); 
    // 输入关节6，回车后，调用update_Angular_Velocity()
    connect( output_topic_editor_6, SIGNAL( editingFinished() ), this, SLOT( update_joint6_rad() ));

    // 设置定时器的回调函数，按周期调用sendVel()
    connect( output_timer, SIGNAL( timeout() ), this, SLOT( sendVel() ));

    // 设置定时器的周期，100ms
    output_timer->start( 100 );
}

// 更新joint1
void TeleopPanel::update_joint1_rad()
{
    // 获取输入框内的数据
    QString temp_string = output_topic_editor_1->text();
    
    // 将字符串转换成浮点数
    float lin = temp_string.toFloat();  
    
    // 保存当前的输入值
    joint1 = lin;
}

// 更新joint2
void TeleopPanel::update_joint2_rad()
{
    QString temp_string = output_topic_editor_2->text();
    float ang = temp_string.toFloat() ;  
    joint2 = ang;
}

// 更新joint3
void TeleopPanel::update_joint3_rad()
{
    QString temp_string = output_topic_editor_3->text();
    float ang = temp_string.toFloat() ;  
    joint3 = ang;
}// 更新joint4
void TeleopPanel::update_joint4_rad()
{
    QString temp_string = output_topic_editor_4->text();
    float ang = temp_string.toFloat() ;  
    joint4 = ang;
}// 更新joint5
void TeleopPanel::update_joint5_rad()
{
    QString temp_string = output_topic_editor_5->text();
    float ang = temp_string.toFloat() ;  
    joint5 = ang;
}// 更新joint6
void TeleopPanel::update_joint6_rad()
{
    QString temp_string = output_topic_editor_6->text();
    float ang = temp_string.toFloat() ;  
    joint6 = ang;
}
// 更新topic命名
void TeleopPanel::updateTopic()
{
    setTopic( output_topic_editor_->text() );
}

// 设置topic命名
void TeleopPanel::setTopic( const QString& new_topic )
{
    // 检查topic是否发生改变.
    if( new_topic != output_topic_ )
    {
        output_topic_ = new_topic;

        // 如果命名为空，不发布任何信息
        if( output_topic_ == "" )
        {
            velocity_publisher_.shutdown();
        }
        // 否则，初始化publisher
        else
        {
            velocity_publisher_ = nh_.advertise<sensor_msgs::JointState>( output_topic_.toStdString(), 1 );
        }

        Q_EMIT configChanged();
    }
}

// 发布消息
void TeleopPanel::sendVel()
{
    if( ros::ok() && velocity_publisher_ )
    {
        sensor_msgs::JointState joint_state;
        joint_state.header.stamp = ros::Time::now();
        joint_state.name.resize(6);
        joint_state.position.resize(6);
	joint_state.name[0]="shoulder_pan_joint";
        joint_state.position[0] = joint1;
	joint_state.name[1] ="shoulder_lift_joint";
        joint_state.position[1] = joint2;
	joint_state.name[2] ="elbow_joint";
        joint_state.position[2] = joint3;
        joint_state.name[3] ="wrist_1_joint";
        joint_state.position[3] = joint4;
	joint_state.name[4] ="wrist_2_joint";
        joint_state.position[4] = joint5;
	joint_state.name[5] ="wrist_3_joint";
        joint_state.position[5] = joint6;
        velocity_publisher_.publish( joint_state );
    }
}

// 重载父类的功能
void TeleopPanel::save( rviz::Config config ) const
{
    rviz::Panel::save( config );
    config.mapSetValue( "Topic", output_topic_ );
}

// 重载父类的功能，加载配置数据
void TeleopPanel::load( const rviz::Config& config )
{
    rviz::Panel::load( config );
    QString topic;
    if( config.mapGetString( "Topic", &topic ))
    {
        output_topic_editor_->setText( topic );
        updateTopic();
    }
}

} // end namespace rviz_teleop_commander

// 声明此类是一个rviz的插件
#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(rviz_teleop_commander::TeleopPanel,rviz::Panel )
// END_TUTORIAL
