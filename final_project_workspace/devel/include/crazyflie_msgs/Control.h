// Generated by gencpp from file crazyflie_msgs/Control.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_MSGS_MESSAGE_CONTROL_H
#define CRAZYFLIE_MSGS_MESSAGE_CONTROL_H


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
struct Control_
{
  typedef Control_<ContainerAllocator> Type;

  Control_()
    : roll(0.0)
    , pitch(0.0)
    , yaw_dot(0.0)
    , thrust(0.0)  {
    }
  Control_(const ContainerAllocator& _alloc)
    : roll(0.0)
    , pitch(0.0)
    , yaw_dot(0.0)
    , thrust(0.0)  {
  (void)_alloc;
    }



   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _yaw_dot_type;
  _yaw_dot_type yaw_dot;

   typedef double _thrust_type;
  _thrust_type thrust;





  typedef boost::shared_ptr< ::crazyflie_msgs::Control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie_msgs::Control_<ContainerAllocator> const> ConstPtr;

}; // struct Control_

typedef ::crazyflie_msgs::Control_<std::allocator<void> > Control;

typedef boost::shared_ptr< ::crazyflie_msgs::Control > ControlPtr;
typedef boost::shared_ptr< ::crazyflie_msgs::Control const> ControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie_msgs::Control_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie_msgs::Control_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::crazyflie_msgs::Control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_msgs::Control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_msgs::Control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_msgs::Control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_msgs::Control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_msgs::Control_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie_msgs::Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e914b14edeed586f23e350ad344ba302";
  }

  static const char* value(const ::crazyflie_msgs::Control_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe914b14edeed586fULL;
  static const uint64_t static_value2 = 0x23e350ad344ba302ULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie_msgs::Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie_msgs/Control";
  }

  static const char* value(const ::crazyflie_msgs::Control_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie_msgs::Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 roll\n\
float64 pitch\n\
float64 yaw_dot\n\
float64 thrust\n\
";
  }

  static const char* value(const ::crazyflie_msgs::Control_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie_msgs::Control_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw_dot);
      stream.next(m.thrust);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Control_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie_msgs::Control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie_msgs::Control_<ContainerAllocator>& v)
  {
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw_dot: ";
    Printer<double>::stream(s, indent + "  ", v.yaw_dot);
    s << indent << "thrust: ";
    Printer<double>::stream(s, indent + "  ", v.thrust);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_MSGS_MESSAGE_CONTROL_H
