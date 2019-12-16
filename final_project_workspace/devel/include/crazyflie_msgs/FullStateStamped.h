// Generated by gencpp from file crazyflie_msgs/FullStateStamped.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_MSGS_MESSAGE_FULLSTATESTAMPED_H
#define CRAZYFLIE_MSGS_MESSAGE_FULLSTATESTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <crazyflie_msgs/FullState.h>

namespace crazyflie_msgs
{
template <class ContainerAllocator>
struct FullStateStamped_
{
  typedef FullStateStamped_<ContainerAllocator> Type;

  FullStateStamped_()
    : header()
    , state()  {
    }
  FullStateStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , state(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::crazyflie_msgs::FullState_<ContainerAllocator>  _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> const> ConstPtr;

}; // struct FullStateStamped_

typedef ::crazyflie_msgs::FullStateStamped_<std::allocator<void> > FullStateStamped;

typedef boost::shared_ptr< ::crazyflie_msgs::FullStateStamped > FullStateStampedPtr;
typedef boost::shared_ptr< ::crazyflie_msgs::FullStateStamped const> FullStateStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace crazyflie_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'crazyflie_msgs': ['/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "95ca4cda6afad75c125ca4a75fb052d8";
  }

  static const char* value(const ::crazyflie_msgs::FullStateStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x95ca4cda6afad75cULL;
  static const uint64_t static_value2 = 0x125ca4a75fb052d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie_msgs/FullStateStamped";
  }

  static const char* value(const ::crazyflie_msgs::FullStateStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
FullState state\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: crazyflie_msgs/FullState\n\
float64 x\n\
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

  static const char* value(const ::crazyflie_msgs::FullStateStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FullStateStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie_msgs::FullStateStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie_msgs::FullStateStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "state: ";
    s << std::endl;
    Printer< ::crazyflie_msgs::FullState_<ContainerAllocator> >::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_MSGS_MESSAGE_FULLSTATESTAMPED_H
