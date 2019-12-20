// Generated by gencpp from file crazyflie_msgs/FullState.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_MSGS_MESSAGE_FULLSTATE_H
#define CRAZYFLIE_MSGS_MESSAGE_FULLSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace crazyflie_msgs
{
template <class ContainerAllocator>
struct FullState_
{
  typedef FullState_<ContainerAllocator> Type;

  FullState_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , x_dot(0.0)
    , y_dot(0.0)
    , z_dot(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , roll_dot(0.0)
    , pitch_dot(0.0)
    , yaw_dot(0.0)  {
    }
  FullState_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , x_dot(0.0)
    , y_dot(0.0)
    , z_dot(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , roll_dot(0.0)
    , pitch_dot(0.0)
    , yaw_dot(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _x_dot_type;
  _x_dot_type x_dot;

   typedef double _y_dot_type;
  _y_dot_type y_dot;

   typedef double _z_dot_type;
  _z_dot_type z_dot;

   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _roll_dot_type;
  _roll_dot_type roll_dot;

   typedef double _pitch_dot_type;
  _pitch_dot_type pitch_dot;

   typedef double _yaw_dot_type;
  _yaw_dot_type yaw_dot;





  typedef boost::shared_ptr< ::crazyflie_msgs::FullState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie_msgs::FullState_<ContainerAllocator> const> ConstPtr;

}; // struct FullState_

typedef ::crazyflie_msgs::FullState_<std::allocator<void> > FullState;

typedef boost::shared_ptr< ::crazyflie_msgs::FullState > FullStatePtr;
typedef boost::shared_ptr< ::crazyflie_msgs::FullState const> FullStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie_msgs::FullState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie_msgs::FullState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace crazyflie_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'crazyflie_msgs': ['/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_msgs::FullState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_msgs::FullState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_msgs::FullState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_msgs::FullState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_msgs::FullState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_msgs::FullState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie_msgs::FullState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1478f01b4f726b5b1e488813cdcd71d7";
  }

  static const char* value(const ::crazyflie_msgs::FullState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1478f01b4f726b5bULL;
  static const uint64_t static_value2 = 0x1e488813cdcd71d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie_msgs::FullState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie_msgs/FullState";
  }

  static const char* value(const ::crazyflie_msgs::FullState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie_msgs::FullState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n\
float64 y\n\
float64 z\n\
float64 x_dot\n\
float64 y_dot\n\
float64 z_dot\n\
float64 roll\n\
float64 pitch\n\
float64 yaw\n\
float64 roll_dot\n\
float64 pitch_dot\n\
float64 yaw_dot\n\
";
  }

  static const char* value(const ::crazyflie_msgs::FullState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie_msgs::FullState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.x_dot);
      stream.next(m.y_dot);
      stream.next(m.z_dot);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
      stream.next(m.roll_dot);
      stream.next(m.pitch_dot);
      stream.next(m.yaw_dot);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FullState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie_msgs::FullState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie_msgs::FullState_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "x_dot: ";
    Printer<double>::stream(s, indent + "  ", v.x_dot);
    s << indent << "y_dot: ";
    Printer<double>::stream(s, indent + "  ", v.y_dot);
    s << indent << "z_dot: ";
    Printer<double>::stream(s, indent + "  ", v.z_dot);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "roll_dot: ";
    Printer<double>::stream(s, indent + "  ", v.roll_dot);
    s << indent << "pitch_dot: ";
    Printer<double>::stream(s, indent + "  ", v.pitch_dot);
    s << indent << "yaw_dot: ";
    Printer<double>::stream(s, indent + "  ", v.yaw_dot);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_MSGS_MESSAGE_FULLSTATE_H
